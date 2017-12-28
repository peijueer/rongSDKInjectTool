.class Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$13;
.super Ljava/lang/Thread;
.source "AnzhiUcenterInner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->backgroundTask(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$13;->this$0:Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;

    iput-object p2, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$13;->val$context:Landroid/content/Context;

    .line 295
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$13;)Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$13;->this$0:Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 298
    iget-object v2, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$13;->this$0:Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;

    const-string v3, "checkUpdate"

    new-array v4, v9, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v8

    const-class v5, Ljava/lang/Boolean;

    aput-object v5, v4, v7

    new-array v5, v9, [Ljava/lang/Object;

    .line 299
    iget-object v6, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$13;->val$context:Landroid/content/Context;

    aput-object v6, v5, v8

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v7

    .line 298
    invoke-virtual {v2, v3, v4, v5}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 300
    .local v1, "value":Ljava/lang/Boolean;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3

    .line 301
    :cond_0
    iget-object v2, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$13;->this$0:Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;

    # invokes: Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->checkPluginUpdate()I
    invoke-static {v2}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->access$9(Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;)I

    move-result v0

    .line 302
    .local v0, "state":I
    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    if-ne v0, v9, :cond_2

    iget-object v2, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$13;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcom/anzhi/sdk/middle/net/Connectivity;->getInstance(Landroid/content/Context;)Lcom/anzhi/sdk/middle/net/Connectivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anzhi/sdk/middle/net/Connectivity;->isMobileConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 303
    :cond_1
    iget-object v2, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$13;->this$0:Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;

    const-string v3, "setReqOtherActivity"

    new-array v4, v7, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v8

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v4, v5}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    .end local v0    # "state":I
    :goto_0
    return-void

    .line 305
    .restart local v0    # "state":I
    :cond_2
    iget-object v2, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$13;->this$0:Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;

    const-string v3, "showNoticeBeforeLogin"

    new-array v4, v7, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v8

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$13;->val$context:Landroid/content/Context;

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v4, v5}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 308
    .end local v0    # "state":I
    :cond_3
    iget-object v2, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$13;->this$0:Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;

    const-string v3, "setReqOtherActivity"

    new-array v4, v7, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v8

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v4, v5}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    iget-object v2, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$13;->this$0:Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;

    # getter for: Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mDialogs:Ljava/util/Stack;
    invoke-static {v2}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->access$10(Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;)Ljava/util/Stack;

    move-result-object v2

    new-instance v3, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$13$1;

    invoke-direct {v3, p0}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$13$1;-><init>(Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$13;)V

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
