.class public Lcom/rongmzw/frame/sdk/domain/http/PayResponse$DataBean;
.super Ljava/lang/Object;
.source "PayResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rongmzw/frame/sdk/domain/http/PayResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation


# instance fields
.field private amount:I

.field private order_no:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmount()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/rongmzw/frame/sdk/domain/http/PayResponse$DataBean;->amount:I

    return v0
.end method

.method public getOrder_no()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/domain/http/PayResponse$DataBean;->order_no:Ljava/lang/String;

    return-object v0
.end method

.method public setAmount(I)V
    .locals 0
    .param p1, "amount"    # I

    .prologue
    .line 75
    iput p1, p0, Lcom/rongmzw/frame/sdk/domain/http/PayResponse$DataBean;->amount:I

    .line 76
    return-void
.end method

.method public setOrder_no(Ljava/lang/String;)V
    .locals 0
    .param p1, "order_no"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/domain/http/PayResponse$DataBean;->order_no:Ljava/lang/String;

    .line 68
    return-void
.end method
