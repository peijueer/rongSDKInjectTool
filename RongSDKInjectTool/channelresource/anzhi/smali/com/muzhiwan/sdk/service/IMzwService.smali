.class public interface abstract Lcom/muzhiwan/sdk/service/IMzwService;
.super Ljava/lang/Object;
.source "IMzwService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/muzhiwan/sdk/service/IMzwService$Stub;
    }
.end annotation


# virtual methods
.method public abstract doExitGame(Lcom/muzhiwan/sdk/service/IMzwExitGameCallBack;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract doInit(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract doLogin(Lcom/muzhiwan/sdk/service/IMzwLoginCallBack;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract doLogout()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract doPay(Lcom/muzhiwan/sdk/service/MzwOrder;Lcom/muzhiwan/sdk/service/IMzwPayCallBack;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract doPostGiftCode(Ljava/lang/String;Lcom/muzhiwan/sdk/service/IMzwPostGiftCodeCallBack;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract doStaPay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/muzhiwan/sdk/service/IMzwStaPayCallBack;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract doSubGameInfo(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract doUpdateAuto(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
