.class public Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean$ParamsBean$ExtraBean;
.super Ljava/lang/Object;
.source "InitResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean$ParamsBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExtraBean"
.end annotation


# instance fields
.field private pid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPid()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean$ParamsBean$ExtraBean;->pid:I

    return v0
.end method

.method public setPid(I)V
    .locals 0
    .param p1, "pid"    # I

    .prologue
    .line 151
    iput p1, p0, Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean$ParamsBean$ExtraBean;->pid:I

    .line 152
    return-void
.end method
