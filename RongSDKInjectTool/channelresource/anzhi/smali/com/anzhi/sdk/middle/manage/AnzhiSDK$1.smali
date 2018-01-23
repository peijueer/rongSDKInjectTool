.class Lcom/anzhi/sdk/middle/manage/AnzhiSDK$1;
.super Ljava/lang/Object;
.source "AnzhiSDK.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->init(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/anzhi/sdk/middle/manage/GameCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

.field private final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/anzhi/sdk/middle/manage/AnzhiSDK;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anzhi/sdk/middle/manage/AnzhiSDK$1;->this$0:Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    iput-object p2, p0, Lcom/anzhi/sdk/middle/manage/AnzhiSDK$1;->val$activity:Landroid/app/Activity;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 115
    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/AnzhiSDK$1;->val$activity:Landroid/app/Activity;

    const-string v1, "\u5f53\u524d\u4e3a\u8c03\u8bd5\u6a21\u5f0f"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 116
    return-void
.end method
