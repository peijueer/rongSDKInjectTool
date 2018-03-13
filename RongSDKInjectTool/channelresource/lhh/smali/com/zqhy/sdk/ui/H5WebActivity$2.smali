.class Lcom/zqhy/sdk/ui/H5WebActivity$2;
.super Ljava/lang/Object;
.source "H5WebActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zqhy/sdk/ui/H5WebActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zqhy/sdk/ui/H5WebActivity;


# direct methods
.method constructor <init>(Lcom/zqhy/sdk/ui/H5WebActivity;)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lcom/zqhy/sdk/ui/H5WebActivity$2;->a:Lcom/zqhy/sdk/ui/H5WebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity$2;->a:Lcom/zqhy/sdk/ui/H5WebActivity;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Lcom/zqhy/sdk/ui/H5WebActivity;->setResult(I)V

    .line 310
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity$2;->a:Lcom/zqhy/sdk/ui/H5WebActivity;

    invoke-virtual {v0}, Lcom/zqhy/sdk/ui/H5WebActivity;->finish()V

    .line 311
    return-void
.end method
