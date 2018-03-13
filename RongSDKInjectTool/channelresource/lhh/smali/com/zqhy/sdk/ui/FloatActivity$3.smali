.class Lcom/zqhy/sdk/ui/FloatActivity$3;
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
.field final synthetic a:Landroid/widget/CheckBox;

.field final synthetic b:Lcom/zqhy/sdk/ui/b;

.field final synthetic c:Lcom/zqhy/sdk/ui/FloatActivity;


# direct methods
.method constructor <init>(Lcom/zqhy/sdk/ui/FloatActivity;Landroid/widget/CheckBox;Lcom/zqhy/sdk/ui/b;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/zqhy/sdk/ui/FloatActivity$3;->c:Lcom/zqhy/sdk/ui/FloatActivity;

    iput-object p2, p0, Lcom/zqhy/sdk/ui/FloatActivity$3;->a:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/zqhy/sdk/ui/FloatActivity$3;->b:Lcom/zqhy/sdk/ui/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 103
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatActivity$3;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatActivity$3;->c:Lcom/zqhy/sdk/ui/FloatActivity;

    invoke-static {v0}, Lcom/zqhy/sdk/ui/FloatActivity;->access$400(Lcom/zqhy/sdk/ui/FloatActivity;)Lcom/zqhy/sdk/model/a;

    move-result-object v0

    const-string v1, "HIDE_FLOAT_DIALOG_KEY"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Lcom/zqhy/sdk/model/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatActivity$3;->b:Lcom/zqhy/sdk/ui/b;

    invoke-virtual {v0}, Lcom/zqhy/sdk/ui/b;->dismiss()V

    .line 107
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatActivity$3;->c:Lcom/zqhy/sdk/ui/FloatActivity;

    invoke-static {v0}, Lcom/zqhy/sdk/ui/FloatWindowManager;->getInstance(Landroid/content/Context;)Lcom/zqhy/sdk/ui/FloatWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zqhy/sdk/ui/FloatWindowManager;->destroyFloat()V

    .line 108
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatActivity$3;->c:Lcom/zqhy/sdk/ui/FloatActivity;

    invoke-virtual {v0}, Lcom/zqhy/sdk/ui/FloatActivity;->finish()V

    .line 109
    return-void
.end method
