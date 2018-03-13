.class Lcom/zqhy/sdk/ui/HomeWebActivity$c;
.super Ljava/lang/Object;
.source "HomeWebActivity.java"

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zqhy/sdk/ui/HomeWebActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/zqhy/sdk/ui/HomeWebActivity;


# direct methods
.method private constructor <init>(Lcom/zqhy/sdk/ui/HomeWebActivity;)V
    .locals 0

    .prologue
    .line 506
    iput-object p1, p0, Lcom/zqhy/sdk/ui/HomeWebActivity$c;->a:Lcom/zqhy/sdk/ui/HomeWebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zqhy/sdk/ui/HomeWebActivity;Lcom/zqhy/sdk/ui/HomeWebActivity$1;)V
    .locals 0

    .prologue
    .line 506
    invoke-direct {p0, p1}, Lcom/zqhy/sdk/ui/HomeWebActivity$c;-><init>(Lcom/zqhy/sdk/ui/HomeWebActivity;)V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3

    .prologue
    .line 510
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 511
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 512
    iget-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity$c;->a:Lcom/zqhy/sdk/ui/HomeWebActivity;

    invoke-virtual {v0, v1}, Lcom/zqhy/sdk/ui/HomeWebActivity;->startActivity(Landroid/content/Intent;)V

    .line 513
    return-void
.end method
