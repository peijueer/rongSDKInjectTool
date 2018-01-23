.class public Lcom/anzhi/sdk/middle/manage/AnzhiReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AnzhiReceiver.java"


# static fields
.field private static sConnected:Ljava/lang/Boolean;

.field public static sConnectingType:I


# instance fields
.field private sPrePackageAddAction:Ljava/lang/String;

.field private sPrePackageRemoveAction:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, -0x2

    sput v0, Lcom/anzhi/sdk/middle/manage/AnzhiReceiver;->sConnectingType:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/anzhi/sdk/middle/manage/AnzhiReceiver;->sPrePackageAddAction:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/anzhi/sdk/middle/manage/AnzhiReceiver;->sPrePackageRemoveAction:Ljava/lang/String;

    .line 18
    return-void
.end method

.method static synthetic access$0(Lcom/anzhi/sdk/middle/manage/AnzhiReceiver;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/anzhi/sdk/middle/manage/AnzhiReceiver;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/anzhi/sdk/middle/manage/AnzhiReceiver;->sConnected:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$2(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 22
    sput-object p0, Lcom/anzhi/sdk/middle/manage/AnzhiReceiver;->sConnected:Ljava/lang/Boolean;

    return-void
.end method

.method private getPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "dataString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 92
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 93
    const-string v2, "package:"

    .line 94
    .local v2, "symbol":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 95
    .local v3, "symbolLen":I
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 96
    .local v0, "index":I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_1

    .line 97
    add-int v1, v0, v3

    .line 98
    .local v1, "startIndex":I
    if-lt v1, v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 99
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 106
    .end local v0    # "index":I
    .end local v1    # "startIndex":I
    .end local v2    # "symbol":Ljava/lang/String;
    .end local v3    # "symbolLen":I
    :cond_0
    :goto_0
    return-object p1

    .line 102
    .restart local v0    # "index":I
    .restart local v2    # "symbol":Ljava/lang/String;
    .restart local v3    # "symbolLen":I
    :cond_1
    const/4 p1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 27
    new-instance v0, Lcom/anzhi/sdk/middle/manage/AnzhiReceiver$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/anzhi/sdk/middle/manage/AnzhiReceiver$1;-><init>(Lcom/anzhi/sdk/middle/manage/AnzhiReceiver;Landroid/content/Intent;Landroid/content/Context;)V

    .line 88
    invoke-virtual {v0}, Lcom/anzhi/sdk/middle/manage/AnzhiReceiver$1;->start()V

    .line 89
    return-void
.end method
