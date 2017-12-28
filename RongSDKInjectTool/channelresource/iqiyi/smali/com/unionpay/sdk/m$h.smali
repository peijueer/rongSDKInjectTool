.class final Lcom/unionpay/sdk/m$h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unionpay/sdk/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unionpay/sdk/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "h"
.end annotation


# instance fields
.field a:D

.field b:D


# direct methods
.method constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/unionpay/sdk/m$h;->a:D

    iput-wide v0, p0, Lcom/unionpay/sdk/m$h;->b:D

    return-void
.end method


# virtual methods
.method public final messagePack(Lcom/unionpay/sdk/p;)V
    .locals 2

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/unionpay/sdk/p;->b(I)Lcom/unionpay/sdk/p;

    iget-wide v0, p0, Lcom/unionpay/sdk/m$h;->a:D

    invoke-virtual {p1, v0, v1}, Lcom/unionpay/sdk/p;->a(D)Lcom/unionpay/sdk/p;

    iget-wide v0, p0, Lcom/unionpay/sdk/m$h;->b:D

    invoke-virtual {p1, v0, v1}, Lcom/unionpay/sdk/p;->a(D)Lcom/unionpay/sdk/p;

    return-void
.end method
