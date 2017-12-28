.class public interface abstract Lcom/muzhiwan/sdk/service/IMzwPayCallBack;
.super Ljava/lang/Object;
.source "IMzwPayCallBack.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/muzhiwan/sdk/service/IMzwPayCallBack$Stub;
    }
.end annotation


# virtual methods
.method public abstract onResult(ILcom/muzhiwan/sdk/service/MzwOrder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
