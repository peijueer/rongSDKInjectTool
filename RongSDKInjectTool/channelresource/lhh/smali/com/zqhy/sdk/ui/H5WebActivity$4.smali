.class Lcom/zqhy/sdk/ui/H5WebActivity$4;
.super Ljava/lang/Object;
.source "H5WebActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zqhy/sdk/ui/H5WebActivity;->checkNetWorkConnected()V
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
    .line 454
    iput-object p1, p0, Lcom/zqhy/sdk/ui/H5WebActivity$4;->a:Lcom/zqhy/sdk/ui/H5WebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 457
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 458
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity$4;->a:Lcom/zqhy/sdk/ui/H5WebActivity;

    invoke-static {v0}, Lcom/zqhy/sdk/utils/h;->a(Landroid/content/Context;)V

    .line 459
    return-void
.end method
