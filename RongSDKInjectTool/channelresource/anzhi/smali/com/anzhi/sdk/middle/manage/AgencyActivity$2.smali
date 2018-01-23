.class Lcom/anzhi/sdk/middle/manage/AgencyActivity$2;
.super Ljava/lang/Object;
.source "AgencyActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anzhi/sdk/middle/manage/AgencyActivity;->pay(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anzhi/sdk/middle/manage/AgencyActivity;

.field private final synthetic val$data:Ljava/lang/String;

.field private final synthetic val$payTask:Lcom/alipay/sdk/app/PayTask;

.field private final synthetic val$payType:I


# direct methods
.method constructor <init>(Lcom/anzhi/sdk/middle/manage/AgencyActivity;Lcom/alipay/sdk/app/PayTask;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anzhi/sdk/middle/manage/AgencyActivity$2;->this$0:Lcom/anzhi/sdk/middle/manage/AgencyActivity;

    iput-object p2, p0, Lcom/anzhi/sdk/middle/manage/AgencyActivity$2;->val$payTask:Lcom/alipay/sdk/app/PayTask;

    iput-object p3, p0, Lcom/anzhi/sdk/middle/manage/AgencyActivity$2;->val$data:Ljava/lang/String;

    iput p4, p0, Lcom/anzhi/sdk/middle/manage/AgencyActivity$2;->val$payType:I

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v5, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 247
    iget-object v1, p0, Lcom/anzhi/sdk/middle/manage/AgencyActivity$2;->val$payTask:Lcom/alipay/sdk/app/PayTask;

    iget-object v2, p0, Lcom/anzhi/sdk/middle/manage/AgencyActivity$2;->val$data:Ljava/lang/String;

    invoke-virtual {v1, v2, v6}, Lcom/alipay/sdk/app/PayTask;->pay(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, "result":Ljava/lang/String;
    invoke-static {}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->getInstance()Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    move-result-object v1

    const-string v2, "payResult"

    new-array v3, v5, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v7

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v6

    .line 249
    new-array v4, v5, [Ljava/lang/Object;

    iget v5, p0, Lcom/anzhi/sdk/middle/manage/AgencyActivity$2;->val$payType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    aput-object v0, v4, v6

    .line 248
    invoke-virtual {v1, v2, v3, v4}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    return-void
.end method
