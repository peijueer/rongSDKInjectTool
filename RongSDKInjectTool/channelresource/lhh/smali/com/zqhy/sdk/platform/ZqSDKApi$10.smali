.class Lcom/zqhy/sdk/platform/ZqSDKApi$10;
.super Ljava/lang/Object;
.source "ZqSDKApi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zqhy/sdk/platform/ZqSDKApi;->initDownloadDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zqhy/sdk/platform/ZqSDKApi;


# direct methods
.method constructor <init>(Lcom/zqhy/sdk/platform/ZqSDKApi;)V
    .locals 0

    .prologue
    .line 665
    iput-object p1, p0, Lcom/zqhy/sdk/platform/ZqSDKApi$10;->this$0:Lcom/zqhy/sdk/platform/ZqSDKApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 683
    iget-object v0, p0, Lcom/zqhy/sdk/platform/ZqSDKApi$10;->this$0:Lcom/zqhy/sdk/platform/ZqSDKApi;

    iget-object v0, v0, Lcom/zqhy/sdk/platform/ZqSDKApi;->downloadDialog:Lcom/zqhy/sdk/ui/b;

    invoke-virtual {v0}, Lcom/zqhy/sdk/ui/b;->dismiss()V

    .line 684
    return-void
.end method
