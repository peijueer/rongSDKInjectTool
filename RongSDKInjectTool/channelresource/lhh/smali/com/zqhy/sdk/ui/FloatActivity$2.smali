.class Lcom/zqhy/sdk/ui/FloatActivity$2;
.super Ljava/lang/Object;
.source "FloatActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zqhy/sdk/ui/FloatActivity;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zqhy/sdk/ui/b;

.field final synthetic b:Lcom/zqhy/sdk/ui/FloatActivity;


# direct methods
.method constructor <init>(Lcom/zqhy/sdk/ui/FloatActivity;Lcom/zqhy/sdk/ui/b;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/zqhy/sdk/ui/FloatActivity$2;->b:Lcom/zqhy/sdk/ui/FloatActivity;

    iput-object p2, p0, Lcom/zqhy/sdk/ui/FloatActivity$2;->a:Lcom/zqhy/sdk/ui/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatActivity$2;->b:Lcom/zqhy/sdk/ui/FloatActivity;

    invoke-static {v0}, Lcom/zqhy/sdk/ui/FloatWindowManager;->getInstance(Landroid/content/Context;)Lcom/zqhy/sdk/ui/FloatWindowManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zqhy/sdk/ui/FloatWindowManager;->setCanTouch(Z)V

    .line 96
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatActivity$2;->a:Lcom/zqhy/sdk/ui/b;

    invoke-virtual {v0}, Lcom/zqhy/sdk/ui/b;->dismiss()V

    .line 97
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatActivity$2;->b:Lcom/zqhy/sdk/ui/FloatActivity;

    invoke-virtual {v0}, Lcom/zqhy/sdk/ui/FloatActivity;->finish()V

    .line 98
    return-void
.end method
