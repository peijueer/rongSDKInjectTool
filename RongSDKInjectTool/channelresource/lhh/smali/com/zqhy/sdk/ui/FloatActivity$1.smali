.class Lcom/zqhy/sdk/ui/FloatActivity$1;
.super Ljava/lang/Object;
.source "FloatActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zqhy/sdk/ui/FloatActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/RelativeLayout;

.field final synthetic b:Lcom/zqhy/sdk/ui/FloatActivity;


# direct methods
.method constructor <init>(Lcom/zqhy/sdk/ui/FloatActivity;Landroid/widget/RelativeLayout;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/zqhy/sdk/ui/FloatActivity$1;->b:Lcom/zqhy/sdk/ui/FloatActivity;

    iput-object p2, p0, Lcom/zqhy/sdk/ui/FloatActivity$1;->a:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatActivity$1;->b:Lcom/zqhy/sdk/ui/FloatActivity;

    iget-object v1, p0, Lcom/zqhy/sdk/ui/FloatActivity$1;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLeft()I

    move-result v1

    # setter for: Lcom/zqhy/sdk/ui/FloatActivity;->startX:I
    invoke-static {v0, v1}, Lcom/zqhy/sdk/ui/FloatActivity;->access$002(Lcom/zqhy/sdk/ui/FloatActivity;I)I

    .line 55
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatActivity$1;->b:Lcom/zqhy/sdk/ui/FloatActivity;

    iget-object v1, p0, Lcom/zqhy/sdk/ui/FloatActivity$1;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getRight()I

    move-result v1

    # setter for: Lcom/zqhy/sdk/ui/FloatActivity;->endX:I
    invoke-static {v0, v1}, Lcom/zqhy/sdk/ui/FloatActivity;->access$102(Lcom/zqhy/sdk/ui/FloatActivity;I)I

    .line 56
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatActivity$1;->b:Lcom/zqhy/sdk/ui/FloatActivity;

    iget-object v1, p0, Lcom/zqhy/sdk/ui/FloatActivity$1;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v1

    # setter for: Lcom/zqhy/sdk/ui/FloatActivity;->startY:I
    invoke-static {v0, v1}, Lcom/zqhy/sdk/ui/FloatActivity;->access$202(Lcom/zqhy/sdk/ui/FloatActivity;I)I

    .line 57
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatActivity$1;->b:Lcom/zqhy/sdk/ui/FloatActivity;

    iget-object v1, p0, Lcom/zqhy/sdk/ui/FloatActivity$1;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getBottom()I

    move-result v1

    # setter for: Lcom/zqhy/sdk/ui/FloatActivity;->endY:I
    invoke-static {v0, v1}, Lcom/zqhy/sdk/ui/FloatActivity;->access$302(Lcom/zqhy/sdk/ui/FloatActivity;I)I

    .line 58
    return-void
.end method
