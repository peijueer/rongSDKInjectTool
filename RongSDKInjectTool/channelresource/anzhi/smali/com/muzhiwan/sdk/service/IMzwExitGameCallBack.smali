.class public interface abstract Lcom/muzhiwan/sdk/service/IMzwExitGameCallBack;
.super Ljava/lang/Object;
.source "IMzwExitGameCallBack.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/muzhiwan/sdk/service/IMzwExitGameCallBack$Stub;
    }
.end annotation


# virtual methods
.method public abstract onResult(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
