.class Lcom/zqhy/sdk/a/a$1;
.super Ljava/lang/Object;
.source "RowAdapter.java"

# interfaces
.implements Lcom/zqhy/sdk/ui/expand/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zqhy/sdk/a/a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zqhy/sdk/a/a$a;

.field final synthetic b:Lcom/zqhy/sdk/a/a;


# direct methods
.method constructor <init>(Lcom/zqhy/sdk/a/a;Lcom/zqhy/sdk/a/a$a;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/zqhy/sdk/a/a$1;->b:Lcom/zqhy/sdk/a/a;

    iput-object p2, p0, Lcom/zqhy/sdk/a/a$1;->a:Lcom/zqhy/sdk/a/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 4

    .prologue
    .line 95
    if-eqz p1, :cond_0

    .line 96
    iget-object v0, p0, Lcom/zqhy/sdk/a/a$1;->a:Lcom/zqhy/sdk/a/a$a;

    iget-object v0, v0, Lcom/zqhy/sdk/a/a$a;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/zqhy/sdk/a/a$1;->b:Lcom/zqhy/sdk/a/a;

    invoke-static {v1}, Lcom/zqhy/sdk/a/a;->a(Lcom/zqhy/sdk/a/a;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "drawable"

    const-string v3, "ic_zqsdk_sdk_up"

    invoke-static {v1, v2, v3}, Lcom/zqhy/sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/zqhy/sdk/a/a$1;->a:Lcom/zqhy/sdk/a/a$a;

    iget-object v0, v0, Lcom/zqhy/sdk/a/a$a;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/zqhy/sdk/a/a$1;->b:Lcom/zqhy/sdk/a/a;

    invoke-static {v1}, Lcom/zqhy/sdk/a/a;->a(Lcom/zqhy/sdk/a/a;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "drawable"

    const-string v3, "ic_zqsdk_sdk_down"

    invoke-static {v1, v2, v3}, Lcom/zqhy/sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
