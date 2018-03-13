.class public abstract Lcom/muzhiwan/sdk/service/IMzwService$Stub;
.super Landroid/os/Binder;
.source "IMzwService.java"

# interfaces
.implements Lcom/muzhiwan/sdk/service/IMzwService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muzhiwan/sdk/service/IMzwService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/muzhiwan/sdk/service/IMzwService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.muzhiwan.sdk.service.IMzwService"

.field static final TRANSACTION_doExitGame:I = 0x8

.field static final TRANSACTION_doInit:I = 0x1

.field static final TRANSACTION_doLogin:I = 0x2

.field static final TRANSACTION_doLogout:I = 0x3

.field static final TRANSACTION_doPay:I = 0x4

.field static final TRANSACTION_doPostGiftCode:I = 0x6

.field static final TRANSACTION_doStaPay:I = 0x5

.field static final TRANSACTION_doSubGameInfo:I = 0x9

.field static final TRANSACTION_doUpdateAuto:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.muzhiwan.sdk.service.IMzwService"

    invoke-virtual {p0, p0, v0}, Lcom/muzhiwan/sdk/service/IMzwService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/muzhiwan/sdk/service/IMzwService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.muzhiwan.sdk.service.IMzwService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/muzhiwan/sdk/service/IMzwService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/muzhiwan/sdk/service/IMzwService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/muzhiwan/sdk/service/IMzwService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/muzhiwan/sdk/service/IMzwService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 142
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 42
    :sswitch_0
    const-string v5, "com.muzhiwan.sdk.service.IMzwService"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v5, "com.muzhiwan.sdk.service.IMzwService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 52
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/muzhiwan/sdk/service/IMzwService$Stub;->doInit(Ljava/lang/String;I)V

    .line 53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 58
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :sswitch_2
    const-string v5, "com.muzhiwan.sdk.service.IMzwService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/muzhiwan/sdk/service/IMzwLoginCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/muzhiwan/sdk/service/IMzwLoginCallBack;

    move-result-object v0

    .line 61
    .local v0, "_arg0":Lcom/muzhiwan/sdk/service/IMzwLoginCallBack;
    invoke-virtual {p0, v0}, Lcom/muzhiwan/sdk/service/IMzwService$Stub;->doLogin(Lcom/muzhiwan/sdk/service/IMzwLoginCallBack;)V

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 67
    .end local v0    # "_arg0":Lcom/muzhiwan/sdk/service/IMzwLoginCallBack;
    :sswitch_3
    const-string v5, "com.muzhiwan.sdk.service.IMzwService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/muzhiwan/sdk/service/IMzwService$Stub;->doLogout()V

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 74
    :sswitch_4
    const-string v5, "com.muzhiwan.sdk.service.IMzwService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    .line 77
    sget-object v5, Lcom/muzhiwan/sdk/service/MzwOrder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muzhiwan/sdk/service/MzwOrder;

    .line 83
    .local v0, "_arg0":Lcom/muzhiwan/sdk/service/MzwOrder;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/muzhiwan/sdk/service/IMzwPayCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/muzhiwan/sdk/service/IMzwPayCallBack;

    move-result-object v1

    .line 84
    .local v1, "_arg1":Lcom/muzhiwan/sdk/service/IMzwPayCallBack;
    invoke-virtual {p0, v0, v1}, Lcom/muzhiwan/sdk/service/IMzwService$Stub;->doPay(Lcom/muzhiwan/sdk/service/MzwOrder;Lcom/muzhiwan/sdk/service/IMzwPayCallBack;)V

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 80
    .end local v0    # "_arg0":Lcom/muzhiwan/sdk/service/MzwOrder;
    .end local v1    # "_arg1":Lcom/muzhiwan/sdk/service/IMzwPayCallBack;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/muzhiwan/sdk/service/MzwOrder;
    goto :goto_1

    .line 90
    .end local v0    # "_arg0":Lcom/muzhiwan/sdk/service/MzwOrder;
    :sswitch_5
    const-string v5, "com.muzhiwan.sdk.service.IMzwService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/muzhiwan/sdk/service/IMzwStaPayCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/muzhiwan/sdk/service/IMzwStaPayCallBack;

    move-result-object v3

    .line 99
    .local v3, "_arg3":Lcom/muzhiwan/sdk/service/IMzwStaPayCallBack;
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/muzhiwan/sdk/service/IMzwService$Stub;->doStaPay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/muzhiwan/sdk/service/IMzwStaPayCallBack;)V

    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 105
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Lcom/muzhiwan/sdk/service/IMzwStaPayCallBack;
    :sswitch_6
    const-string v5, "com.muzhiwan.sdk.service.IMzwService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 109
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/muzhiwan/sdk/service/IMzwPostGiftCodeCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/muzhiwan/sdk/service/IMzwPostGiftCodeCallBack;

    move-result-object v1

    .line 110
    .local v1, "_arg1":Lcom/muzhiwan/sdk/service/IMzwPostGiftCodeCallBack;
    invoke-virtual {p0, v0, v1}, Lcom/muzhiwan/sdk/service/IMzwService$Stub;->doPostGiftCode(Ljava/lang/String;Lcom/muzhiwan/sdk/service/IMzwPostGiftCodeCallBack;)V

    .line 111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 116
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lcom/muzhiwan/sdk/service/IMzwPostGiftCodeCallBack;
    :sswitch_7
    const-string v5, "com.muzhiwan.sdk.service.IMzwService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 119
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/muzhiwan/sdk/service/IMzwService$Stub;->doUpdateAuto(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 125
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_8
    const-string v5, "com.muzhiwan.sdk.service.IMzwService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/muzhiwan/sdk/service/IMzwExitGameCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/muzhiwan/sdk/service/IMzwExitGameCallBack;

    move-result-object v0

    .line 128
    .local v0, "_arg0":Lcom/muzhiwan/sdk/service/IMzwExitGameCallBack;
    invoke-virtual {p0, v0}, Lcom/muzhiwan/sdk/service/IMzwService$Stub;->doExitGame(Lcom/muzhiwan/sdk/service/IMzwExitGameCallBack;)V

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 134
    .end local v0    # "_arg0":Lcom/muzhiwan/sdk/service/IMzwExitGameCallBack;
    :sswitch_9
    const-string v5, "com.muzhiwan.sdk.service.IMzwService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/muzhiwan/sdk/service/IMzwService$Stub;->doSubGameInfo(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
