.class Lcom/zqhy/sdk/platform/ZqSDKApi$5;
.super Ljava/lang/Object;
.source "ZqSDKApi.java"

# interfaces
.implements Lcom/zqhy/sdk/callback/InitCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zqhy/sdk/platform/ZqSDKApi;->login(Landroid/app/Activity;Lcom/zqhy/sdk/callback/LoginCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zqhy/sdk/platform/ZqSDKApi;

.field final synthetic val$loginCallBack:Lcom/zqhy/sdk/callback/LoginCallBack;

.field final synthetic val$t:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/zqhy/sdk/platform/ZqSDKApi;Landroid/app/Activity;Lcom/zqhy/sdk/callback/LoginCallBack;)V
    .locals 0

    .prologue
    .line 340
    iput-object p1, p0, Lcom/zqhy/sdk/platform/ZqSDKApi$5;->this$0:Lcom/zqhy/sdk/platform/ZqSDKApi;

    iput-object p2, p0, Lcom/zqhy/sdk/platform/ZqSDKApi$5;->val$t:Landroid/app/Activity;

    iput-object p3, p0, Lcom/zqhy/sdk/platform/ZqSDKApi$5;->val$loginCallBack:Lcom/zqhy/sdk/callback/LoginCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitFailure(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 349
    const-string v0, "SDK"

    const-string v1, "init failuer"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    return-void
.end method

.method public onInitSuccess()V
    .locals 3

    .prologue
    .line 343
    const-string v0, "SDK"

    const-string v1, "init succeed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v0, p0, Lcom/zqhy/sdk/platform/ZqSDKApi$5;->this$0:Lcom/zqhy/sdk/platform/ZqSDKApi;

    iget-object v1, p0, Lcom/zqhy/sdk/platform/ZqSDKApi$5;->val$t:Landroid/app/Activity;

    iget-object v2, p0, Lcom/zqhy/sdk/platform/ZqSDKApi$5;->val$loginCallBack:Lcom/zqhy/sdk/callback/LoginCallBack;

    invoke-virtual {v0, v1, v2}, Lcom/zqhy/sdk/platform/ZqSDKApi;->login(Landroid/app/Activity;Lcom/zqhy/sdk/callback/LoginCallBack;)V

    .line 345
    return-void
.end method
