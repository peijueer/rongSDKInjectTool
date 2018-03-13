.class Lcom/zqhy/sdk/ui/H5WebActivity$c;
.super Ljava/lang/Object;
.source "H5WebActivity.java"

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zqhy/sdk/ui/H5WebActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/zqhy/sdk/ui/H5WebActivity;


# direct methods
.method private constructor <init>(Lcom/zqhy/sdk/ui/H5WebActivity;)V
    .locals 0

    .prologue
    .line 725
    iput-object p1, p0, Lcom/zqhy/sdk/ui/H5WebActivity$c;->a:Lcom/zqhy/sdk/ui/H5WebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zqhy/sdk/ui/H5WebActivity;Lcom/zqhy/sdk/ui/H5WebActivity$1;)V
    .locals 0

    .prologue
    .line 725
    invoke-direct {p0, p1}, Lcom/zqhy/sdk/ui/H5WebActivity$c;-><init>(Lcom/zqhy/sdk/ui/H5WebActivity;)V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3

    .prologue
    .line 729
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 730
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 731
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity$c;->a:Lcom/zqhy/sdk/ui/H5WebActivity;

    invoke-virtual {v0, v1}, Lcom/zqhy/sdk/ui/H5WebActivity;->startActivity(Landroid/content/Intent;)V

    .line 732
    return-void
.end method
