.class Lcom/muzhiwan/sdk/core/InnerController$InitConfigRequestRunable;
.super Ljava/lang/Object;
.source "InnerController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muzhiwan/sdk/core/InnerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InitConfigRequestRunable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/muzhiwan/sdk/core/InnerController;


# direct methods
.method private constructor <init>(Lcom/muzhiwan/sdk/core/InnerController;)V
    .locals 0

    .prologue
    .line 437
    iput-object p1, p0, Lcom/muzhiwan/sdk/core/InnerController$InitConfigRequestRunable;->this$0:Lcom/muzhiwan/sdk/core/InnerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/muzhiwan/sdk/core/InnerController;Lcom/muzhiwan/sdk/core/InnerController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/muzhiwan/sdk/core/InnerController;
    .param p2, "x1"    # Lcom/muzhiwan/sdk/core/InnerController$1;

    .prologue
    .line 437
    invoke-direct {p0, p1}, Lcom/muzhiwan/sdk/core/InnerController$InitConfigRequestRunable;-><init>(Lcom/muzhiwan/sdk/core/InnerController;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 441
    iget-object v2, p0, Lcom/muzhiwan/sdk/core/InnerController$InitConfigRequestRunable;->this$0:Lcom/muzhiwan/sdk/core/InnerController;

    # getter for: Lcom/muzhiwan/sdk/core/InnerController;->gameMainActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/muzhiwan/sdk/core/InnerController;->access$600(Lcom/muzhiwan/sdk/core/InnerController;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/muzhiwan/sdk/dynamic/utils/HttpUtils;->requestConfig(Landroid/app/Activity;)V

    .line 443
    iget-object v2, p0, Lcom/muzhiwan/sdk/core/InnerController$InitConfigRequestRunable;->this$0:Lcom/muzhiwan/sdk/core/InnerController;

    invoke-virtual {v2}, Lcom/muzhiwan/sdk/core/InnerController;->isRollback()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 444
    iget-object v2, p0, Lcom/muzhiwan/sdk/core/InnerController$InitConfigRequestRunable;->this$0:Lcom/muzhiwan/sdk/core/InnerController;

    # getter for: Lcom/muzhiwan/sdk/core/InnerController;->gameMainActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/muzhiwan/sdk/core/InnerController;->access$600(Lcom/muzhiwan/sdk/core/InnerController;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/muzhiwan/sdk/dynamic/utils/IOUtils;->getDestPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 445
    .local v0, "dest":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 446
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 447
    iget-object v2, p0, Lcom/muzhiwan/sdk/core/InnerController$InitConfigRequestRunable;->this$0:Lcom/muzhiwan/sdk/core/InnerController;

    const-string v3, ""

    # setter for: Lcom/muzhiwan/sdk/core/InnerController;->updatePath:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/muzhiwan/sdk/core/InnerController;->access$1102(Lcom/muzhiwan/sdk/core/InnerController;Ljava/lang/String;)Ljava/lang/String;

    .line 451
    .end local v0    # "dest":Ljava/lang/String;
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    iget-object v2, p0, Lcom/muzhiwan/sdk/core/InnerController$InitConfigRequestRunable;->this$0:Lcom/muzhiwan/sdk/core/InnerController;

    # getter for: Lcom/muzhiwan/sdk/core/InnerController;->updatePath:Ljava/lang/String;
    invoke-static {v2}, Lcom/muzhiwan/sdk/core/InnerController;->access$1100(Lcom/muzhiwan/sdk/core/InnerController;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/muzhiwan/sdk/common/utils/StringManagerUtils;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 452
    iget-object v2, p0, Lcom/muzhiwan/sdk/core/InnerController$InitConfigRequestRunable;->this$0:Lcom/muzhiwan/sdk/core/InnerController;

    invoke-virtual {v2}, Lcom/muzhiwan/sdk/core/InnerController;->updateSDKPlugin()V

    .line 456
    :goto_0
    return-void

    .line 454
    :cond_1
    iget-object v2, p0, Lcom/muzhiwan/sdk/core/InnerController$InitConfigRequestRunable;->this$0:Lcom/muzhiwan/sdk/core/InnerController;

    invoke-virtual {v2}, Lcom/muzhiwan/sdk/core/InnerController;->callSDKPlugin()V

    goto :goto_0
.end method
