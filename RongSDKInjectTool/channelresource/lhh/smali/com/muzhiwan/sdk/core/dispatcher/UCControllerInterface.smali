.class public Lcom/muzhiwan/sdk/core/dispatcher/UCControllerInterface;
.super Ljava/lang/Object;
.source "UCControllerInterface.java"

# interfaces
.implements Lcom/muzhiwan/sdk/core/dispatcher/ControllerInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doDestroy(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 35
    return-void
.end method

.method public doInit(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 15
    return-void
.end method

.method public doLogin(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # I

    .prologue
    .line 20
    return-void
.end method

.method public doLogout()V
    .locals 0

    .prologue
    .line 30
    return-void
.end method

.method public doPay()V
    .locals 0

    .prologue
    .line 25
    return-void
.end method
