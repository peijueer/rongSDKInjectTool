.class public abstract Lcom/unionpay/mobile/android/hce/service/a$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/unionpay/mobile/android/hce/service/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unionpay/mobile/android/hce/service/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unionpay/mobile/android/hce/service/a$a$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/os/IBinder;)Lcom/unionpay/mobile/android/hce/service/a;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.unionpay.mobile.android.hce.service.IHCEBankService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/unionpay/mobile/android/hce/service/a;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/unionpay/mobile/android/hce/service/a;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/unionpay/mobile/android/hce/service/a$a$a;

    invoke-direct {v0, p0}, Lcom/unionpay/mobile/android/hce/service/a$a$a;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    const-string v1, "com.unionpay.mobile.android.hce.service.IHCEBankService"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v1, "com.unionpay.mobile.android.hce.service.IHCEBankService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/unionpay/mobile/android/hce/service/b$a;->a(Landroid/os/IBinder;)Lcom/unionpay/mobile/android/hce/service/b;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/unionpay/mobile/android/hce/service/a$a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/unionpay/mobile/android/hce/service/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    const-string v1, "com.unionpay.mobile.android.hce.service.IHCEBankService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/unionpay/mobile/android/hce/service/b$a;->a(Landroid/os/IBinder;)Lcom/unionpay/mobile/android/hce/service/b;

    move-result-object v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/unionpay/mobile/android/hce/service/a$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unionpay/mobile/android/hce/service/b;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
