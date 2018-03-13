.class public Lcom/zqhy/sdk/ui/b;
.super Landroid/app/Dialog;
.source "CommonDialog.java"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;III)V
    .locals 2

    .prologue
    .line 38
    const-string v0, "style"

    const-string v1, "zq_sdk_common_dialog"

    invoke-static {p1, v0, v1}, Lcom/zqhy/sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 39
    invoke-virtual {p0, p2}, Lcom/zqhy/sdk/ui/b;->setContentView(Landroid/view/View;)V

    .line 40
    iput-object p1, p0, Lcom/zqhy/sdk/ui/b;->a:Landroid/content/Context;

    .line 41
    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/b;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 44
    iput p4, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 45
    iput p3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 46
    iput p5, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 47
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 48
    return-void
.end method
