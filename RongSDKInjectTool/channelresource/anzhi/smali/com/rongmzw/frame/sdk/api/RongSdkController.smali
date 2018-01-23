.class public Lcom/rongmzw/frame/sdk/api/RongSdkController;
.super Lcom/rongmzw/frame/sdk/impl/RongSdkRequest;
.source "RongSdkController.java"

# interfaces
.implements Lcom/rongmzw/frame/sdk/api/RongSdkApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rongmzw/frame/sdk/api/RongSdkController$RongSdkControllerHolder;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private anzhiSDK:Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

.field private appSecret:Ljava/lang/String;

.field private appkey:Ljava/lang/String;

.field private callback:Lcom/anzhi/sdk/middle/manage/GameCallBack;

.field private hasLoopered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/rongmzw/frame/sdk/api/RongSdkController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/rongmzw/frame/sdk/impl/RongSdkRequest;-><init>()V

    .line 39
    const-string v0, "11111"

    iput-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->appkey:Ljava/lang/String;

    .line 40
    const-string v0, "1111"

    iput-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->appSecret:Ljava/lang/String;

    .line 41
    invoke-static {}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->getInstance()Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    move-result-object v0

    iput-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->anzhiSDK:Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    .line 44
    new-instance v0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;

    invoke-direct {v0, p0}, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;-><init>(Lcom/rongmzw/frame/sdk/api/RongSdkController;)V

    iput-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->callback:Lcom/anzhi/sdk/middle/manage/GameCallBack;

    .line 136
    return-void
.end method

.method synthetic constructor <init>(Lcom/rongmzw/frame/sdk/api/RongSdkController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController$1;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/rongmzw/frame/sdk/api/RongSdkController;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->hasLoopered:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/InitResponse;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponse:Lcom/rongmzw/frame/sdk/domain/http/InitResponse;

    return-object v0
.end method

.method static synthetic access$102(Lcom/rongmzw/frame/sdk/api/RongSdkController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->hasLoopered:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->loginResponse:Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->gameActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->gameActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->gameActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->loginResponse:Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->gameActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/InitResponse;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponse:Lcom/rongmzw/frame/sdk/domain/http/InitResponse;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->loginResponse:Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->gameActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->gameActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->gameActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->loginResponse:Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->loginResponse:Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->loginResponse:Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/rongmzw/frame/sdk/api/RongSdkController;Lcom/rongmzw/frame/sdk/domain/http/InitResponse;)Lcom/rongmzw/frame/sdk/domain/http/InitResponse;
    .locals 0
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;
    .param p1, "x1"    # Lcom/rongmzw/frame/sdk/domain/http/InitResponse;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponse:Lcom/rongmzw/frame/sdk/domain/http/InitResponse;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/google/gson/Gson;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->gson:Lcom/google/gson/Gson;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/InitResponse;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponse:Lcom/rongmzw/frame/sdk/domain/http/InitResponse;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/InitResponse;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponse:Lcom/rongmzw/frame/sdk/domain/http/InitResponse;

    return-object v0
.end method

.method static synthetic access$300(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/anzhi/sdk/middle/manage/AnzhiSDK;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->anzhiSDK:Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/InitResponse;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponse:Lcom/rongmzw/frame/sdk/domain/http/InitResponse;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/muzhiwan/sdk/core/MzwSdkController;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->mzwSdkController:Lcom/muzhiwan/sdk/core/MzwSdkController;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->appkey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/rongmzw/frame/sdk/api/RongSdkController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->appkey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/InitResponse;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponse:Lcom/rongmzw/frame/sdk/domain/http/InitResponse;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->appSecret:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/rongmzw/frame/sdk/api/RongSdkController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->appSecret:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/InitResponse;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponse:Lcom/rongmzw/frame/sdk/domain/http/InitResponse;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/anzhi/sdk/middle/manage/GameCallBack;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->callback:Lcom/anzhi/sdk/middle/manage/GameCallBack;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/rongmzw/frame/sdk/api/RongSdkController;Lcom/rongmzw/frame/sdk/domain/http/PayResponse;)Lcom/rongmzw/frame/sdk/domain/http/PayResponse;
    .locals 0
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;
    .param p1, "x1"    # Lcom/rongmzw/frame/sdk/domain/http/PayResponse;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->payResponse:Lcom/rongmzw/frame/sdk/domain/http/PayResponse;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/google/gson/Gson;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->gson:Lcom/google/gson/Gson;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/PayResponse;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->payResponse:Lcom/rongmzw/frame/sdk/domain/http/PayResponse;

    return-object v0
.end method

.method static synthetic access$400(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->gameActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/PayResponse;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->payResponse:Lcom/rongmzw/frame/sdk/domain/http/PayResponse;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/PayResponse;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->payResponse:Lcom/rongmzw/frame/sdk/domain/http/PayResponse;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/PayResponse;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->payResponse:Lcom/rongmzw/frame/sdk/domain/http/PayResponse;

    return-object v0
.end method

.method static synthetic access$502(Lcom/rongmzw/frame/sdk/api/RongSdkController;Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;)Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;
    .locals 0
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;
    .param p1, "x1"    # Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->loginResponse:Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;

    return-object p1
.end method

.method static synthetic access$600(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/google/gson/Gson;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->gson:Lcom/google/gson/Gson;

    return-object v0
.end method

.method static synthetic access$700(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->loginResponse:Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;

    return-object v0
.end method

.method static synthetic access$800(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->loginResponse:Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;

    return-object v0
.end method

.method static synthetic access$900(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->loginResponse:Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;

    return-object v0
.end method

.method public static getInstance()Lcom/rongmzw/frame/sdk/api/RongSdkController;
    .locals 1

    .prologue
    .line 144
    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController$RongSdkControllerHolder;->INSTANCE:Lcom/rongmzw/frame/sdk/api/RongSdkController;
    invoke-static {}, Lcom/rongmzw/frame/sdk/api/RongSdkController$RongSdkControllerHolder;->access$2500()Lcom/rongmzw/frame/sdk/api/RongSdkController;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public callExitGame()V
    .locals 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponse:Lcom/rongmzw/frame/sdk/domain/http/InitResponse;

    invoke-virtual {v0}, Lcom/rongmzw/frame/sdk/domain/http/InitResponse;->getData()Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;->getSwitchX()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponse:Lcom/rongmzw/frame/sdk/domain/http/InitResponse;

    invoke-virtual {v0}, Lcom/rongmzw/frame/sdk/domain/http/InitResponse;->getData()Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;->getSwitchX()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponse:Lcom/rongmzw/frame/sdk/domain/http/InitResponse;

    invoke-virtual {v0}, Lcom/rongmzw/frame/sdk/domain/http/InitResponse;->getData()Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;->getBindstate()I

    move-result v0

    if-eqz v0, :cond_1

    .line 346
    :cond_0
    sget-object v0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->TAG:Ljava/lang/String;

    const-string v1, "mzw callExitGame......"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    const-string v0, "exitGame success......"

    invoke-static {v0}, Lcom/rongmzw/frame/sdk/callback/RongCallBackUtils;->exitGameSuccessCallBack(Ljava/lang/String;)V

    .line 352
    :goto_0
    return-void

    .line 349
    :cond_1
    sget-object v0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->TAG:Ljava/lang/String;

    const-string v1, "anzhi callExitGame......"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->anzhiSDK:Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    iget-object v1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->gameActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->exitGame(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public callInit(Landroid/app/Activity;ILcom/rongmzw/frame/sdk/callback/RongCallback;)V
    .locals 1
    .param p1, "gameActivity"    # Landroid/app/Activity;
    .param p2, "screenOrientation"    # I
    .param p3, "rongCallback"    # Lcom/rongmzw/frame/sdk/callback/RongCallback;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->gameActivity:Landroid/app/Activity;

    .line 150
    sput-object p3, Lcom/rongmzw/frame/sdk/callback/RongCallBackUtils;->rongCallback:Lcom/rongmzw/frame/sdk/callback/RongCallback;

    .line 151
    new-instance v0, Lcom/rongmzw/frame/sdk/api/RongSdkController$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/rongmzw/frame/sdk/api/RongSdkController$2;-><init>(Lcom/rongmzw/frame/sdk/api/RongSdkController;Landroid/app/Activity;I)V

    invoke-virtual {p0, p1, v0}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->initRequest(Landroid/app/Activity;Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;)V

    .line 177
    return-void
.end method

.method public callLogin()V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponse:Lcom/rongmzw/frame/sdk/domain/http/InitResponse;

    invoke-virtual {v0}, Lcom/rongmzw/frame/sdk/domain/http/InitResponse;->getData()Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;->getSwitchX()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponse:Lcom/rongmzw/frame/sdk/domain/http/InitResponse;

    invoke-virtual {v0}, Lcom/rongmzw/frame/sdk/domain/http/InitResponse;->getData()Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;->getSwitchX()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponse:Lcom/rongmzw/frame/sdk/domain/http/InitResponse;

    invoke-virtual {v0}, Lcom/rongmzw/frame/sdk/domain/http/InitResponse;->getData()Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;->getBindstate()I

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    :cond_0
    sget-object v0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->TAG:Ljava/lang/String;

    const-string v1, "mzw callLogin......"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->mzwSdkController:Lcom/muzhiwan/sdk/core/MzwSdkController;

    new-instance v1, Lcom/rongmzw/frame/sdk/api/RongSdkController$3;

    invoke-direct {v1, p0}, Lcom/rongmzw/frame/sdk/api/RongSdkController$3;-><init>(Lcom/rongmzw/frame/sdk/api/RongSdkController;)V

    invoke-virtual {v0, v1}, Lcom/muzhiwan/sdk/core/MzwSdkController;->doLogin(Lcom/muzhiwan/sdk/core/callback/MzwLoignCallback;)V

    .line 193
    :goto_0
    return-void

    .line 190
    :cond_1
    sget-object v0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->TAG:Ljava/lang/String;

    const-string v1, "anzhi callLogin......"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->anzhiSDK:Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    iget-object v1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->gameActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->login(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public callLogout()V
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponse:Lcom/rongmzw/frame/sdk/domain/http/InitResponse;

    invoke-virtual {v0}, Lcom/rongmzw/frame/sdk/domain/http/InitResponse;->getData()Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;->getSwitchX()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponse:Lcom/rongmzw/frame/sdk/domain/http/InitResponse;

    invoke-virtual {v0}, Lcom/rongmzw/frame/sdk/domain/http/InitResponse;->getData()Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;->getSwitchX()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponse:Lcom/rongmzw/frame/sdk/domain/http/InitResponse;

    invoke-virtual {v0}, Lcom/rongmzw/frame/sdk/domain/http/InitResponse;->getData()Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;->getBindstate()I

    move-result v0

    if-eqz v0, :cond_1

    .line 263
    :cond_0
    sget-object v0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->TAG:Ljava/lang/String;

    const-string v1, "mzw callLogout......"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->mzwSdkController:Lcom/muzhiwan/sdk/core/MzwSdkController;

    invoke-virtual {v0}, Lcom/muzhiwan/sdk/core/MzwSdkController;->doLogout()V

    .line 269
    :goto_0
    return-void

    .line 266
    :cond_1
    sget-object v0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->TAG:Ljava/lang/String;

    const-string v1, "anzhi callLogout......"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->anzhiSDK:Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    invoke-virtual {v0}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->logout()V

    goto :goto_0
.end method

.method public callOnDestoryInvoked()V
    .locals 2

    .prologue
    .line 338
    sget-object v0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->TAG:Ljava/lang/String;

    const-string v1, "anzhi callOnDestoryInvoked......"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->anzhiSDK:Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    invoke-virtual {v0}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->onDestoryInvoked()V

    .line 341
    return-void
.end method

.method public callOnNewIntentInvoked(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 287
    sget-object v0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->TAG:Ljava/lang/String;

    const-string v1, "anzhi callOnNewIntentInvoked......"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->anzhiSDK:Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    invoke-virtual {v0, p1}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->onNewIntentInvoked(Landroid/content/Intent;)V

    .line 290
    return-void
.end method

.method public callOnPauseInvoked()V
    .locals 2

    .prologue
    .line 317
    sget-object v0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->TAG:Ljava/lang/String;

    const-string v1, "anzhi callOnPauseInvoked......"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->anzhiSDK:Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    invoke-virtual {v0}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->onPauseInvoked()V

    .line 320
    return-void
.end method

.method public callOnResumeInvoked()V
    .locals 2

    .prologue
    .line 297
    sget-object v0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->TAG:Ljava/lang/String;

    const-string v1, "anzhi callOnResumeInvoked......"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->anzhiSDK:Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    invoke-virtual {v0}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->onResumeInvoked()V

    .line 300
    return-void
.end method

.method public callOnStartInvoked()V
    .locals 2

    .prologue
    .line 307
    sget-object v0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->TAG:Ljava/lang/String;

    const-string v1, "anzhi callOnStartInvoked......"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->anzhiSDK:Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    invoke-virtual {v0}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->onStartInvoked()V

    .line 310
    return-void
.end method

.method public callOnStopInvoked()V
    .locals 2

    .prologue
    .line 327
    sget-object v0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->TAG:Ljava/lang/String;

    const-string v1, "anzhi callOnStopInvoked......"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->anzhiSDK:Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    invoke-virtual {v0}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->onStopInvoked()V

    .line 330
    return-void
.end method

.method public callPay(Lcom/rongmzw/frame/sdk/domain/local/RongOrder;)V
    .locals 10
    .param p1, "rongMzwOrder"    # Lcom/rongmzw/frame/sdk/domain/local/RongOrder;

    .prologue
    .line 197
    iget-object v7, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponse:Lcom/rongmzw/frame/sdk/domain/http/InitResponse;

    invoke-virtual {v7}, Lcom/rongmzw/frame/sdk/domain/http/InitResponse;->getData()Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;

    move-result-object v7

    invoke-virtual {v7}, Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;->getSwitchX()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_0

    iget-object v7, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponse:Lcom/rongmzw/frame/sdk/domain/http/InitResponse;

    invoke-virtual {v7}, Lcom/rongmzw/frame/sdk/domain/http/InitResponse;->getData()Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;

    move-result-object v7

    invoke-virtual {v7}, Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;->getSwitchX()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    iget-object v7, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponse:Lcom/rongmzw/frame/sdk/domain/http/InitResponse;

    invoke-virtual {v7}, Lcom/rongmzw/frame/sdk/domain/http/InitResponse;->getData()Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;

    move-result-object v7

    invoke-virtual {v7}, Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;->getBindstate()I

    move-result v7

    if-eqz v7, :cond_1

    .line 198
    :cond_0
    new-instance v1, Lcom/muzhiwan/sdk/service/MzwOrder;

    invoke-direct {v1}, Lcom/muzhiwan/sdk/service/MzwOrder;-><init>()V

    .line 199
    .local v1, "mzwOrder":Lcom/muzhiwan/sdk/service/MzwOrder;
    invoke-virtual {p1}, Lcom/rongmzw/frame/sdk/domain/local/RongOrder;->getProductPrice()I

    move-result v7

    int-to-double v8, v7

    invoke-virtual {v1, v8, v9}, Lcom/muzhiwan/sdk/service/MzwOrder;->setMoney(D)V

    .line 200
    invoke-virtual {p1}, Lcom/rongmzw/frame/sdk/domain/local/RongOrder;->getProductDesc()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/muzhiwan/sdk/service/MzwOrder;->setProductdesc(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p1}, Lcom/rongmzw/frame/sdk/domain/local/RongOrder;->getProductId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/muzhiwan/sdk/service/MzwOrder;->setProductid(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p1}, Lcom/rongmzw/frame/sdk/domain/local/RongOrder;->getProductName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/muzhiwan/sdk/service/MzwOrder;->setProductname(Ljava/lang/String;)V

    .line 203
    iget-object v7, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->mzwSdkController:Lcom/muzhiwan/sdk/core/MzwSdkController;

    new-instance v8, Lcom/rongmzw/frame/sdk/api/RongSdkController$4;

    invoke-direct {v8, p0}, Lcom/rongmzw/frame/sdk/api/RongSdkController$4;-><init>(Lcom/rongmzw/frame/sdk/api/RongSdkController;)V

    invoke-virtual {v7, v1, v8}, Lcom/muzhiwan/sdk/core/MzwSdkController;->doPay(Lcom/muzhiwan/sdk/service/MzwOrder;Lcom/muzhiwan/sdk/core/callback/MzwPayCallback;)V

    .line 249
    .end local v1    # "mzwOrder":Lcom/muzhiwan/sdk/service/MzwOrder;
    :goto_0
    return-void

    .line 210
    :cond_1
    iget-object v7, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponse:Lcom/rongmzw/frame/sdk/domain/http/InitResponse;

    invoke-virtual {v7}, Lcom/rongmzw/frame/sdk/domain/http/InitResponse;->getData()Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;

    move-result-object v7

    invoke-virtual {v7}, Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;->getApilevel()I

    move-result v7

    if-nez v7, :cond_2

    .line 211
    sget-object v7, Lcom/rongmzw/frame/sdk/api/RongSdkController;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "anzhi callPay......rongMzwOrder--->"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-virtual {p1}, Lcom/rongmzw/frame/sdk/domain/local/RongOrder;->getProductId()Ljava/lang/String;

    move-result-object v4

    .line 213
    .local v4, "productId":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/rongmzw/frame/sdk/domain/local/RongOrder;->getProductName()Ljava/lang/String;

    move-result-object v5

    .line 214
    .local v5, "productName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/rongmzw/frame/sdk/domain/local/RongOrder;->getProductDesc()Ljava/lang/String;

    move-result-object v3

    .line 215
    .local v3, "productDesc":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/rongmzw/frame/sdk/domain/local/RongOrder;->getExtern()Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "extern":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/rongmzw/frame/sdk/domain/local/RongOrder;->getProductPrice()I

    move-result v6

    .line 217
    .local v6, "productPrice":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "{\"productid\":\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\",\"subject\":\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\",\"productdesc\":\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\",\"amount\":\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\",\"extern\":\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\"}"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 218
    .local v2, "orderInfo":Ljava/lang/String;
    iget-object v7, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->gameActivity:Landroid/app/Activity;

    new-instance v8, Lcom/rongmzw/frame/sdk/api/RongSdkController$5;

    invoke-direct {v8, p0, v4, v5, v3}, Lcom/rongmzw/frame/sdk/api/RongSdkController$5;-><init>(Lcom/rongmzw/frame/sdk/api/RongSdkController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v7, v2, v8}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->payRequest(Landroid/app/Activity;Ljava/lang/String;Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;)V

    goto/16 :goto_0

    .line 246
    .end local v0    # "extern":Ljava/lang/String;
    .end local v2    # "orderInfo":Ljava/lang/String;
    .end local v3    # "productDesc":Ljava/lang/String;
    .end local v4    # "productId":Ljava/lang/String;
    .end local v5    # "productName":Ljava/lang/String;
    .end local v6    # "productPrice":I
    :cond_2
    const-string v7, "current channel stop recharge function"

    invoke-static {v7}, Lcom/rongmzw/frame/sdk/callback/RongCallBackUtils;->payFailedCallBack(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public callStaPay()V
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponse:Lcom/rongmzw/frame/sdk/domain/http/InitResponse;

    invoke-virtual {v0}, Lcom/rongmzw/frame/sdk/domain/http/InitResponse;->getData()Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;->getSwitchX()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponse:Lcom/rongmzw/frame/sdk/domain/http/InitResponse;

    invoke-virtual {v0}, Lcom/rongmzw/frame/sdk/domain/http/InitResponse;->getData()Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;->getSwitchX()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponse:Lcom/rongmzw/frame/sdk/domain/http/InitResponse;

    invoke-virtual {v0}, Lcom/rongmzw/frame/sdk/domain/http/InitResponse;->getData()Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;->getBindstate()I

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    :cond_0
    sget-object v0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->TAG:Ljava/lang/String;

    const-string v1, "mzw callStaPay......"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :goto_0
    return-void

    .line 256
    :cond_1
    sget-object v0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->TAG:Ljava/lang/String;

    const-string v1, "anzhi callStaPay......"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public callSubGameInfo(Lcom/rongmzw/frame/sdk/domain/local/RongGameInfo;)V
    .locals 3
    .param p1, "gameInfo"    # Lcom/rongmzw/frame/sdk/domain/local/RongGameInfo;

    .prologue
    .line 273
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponse:Lcom/rongmzw/frame/sdk/domain/http/InitResponse;

    invoke-virtual {v0}, Lcom/rongmzw/frame/sdk/domain/http/InitResponse;->getData()Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;->getSwitchX()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponse:Lcom/rongmzw/frame/sdk/domain/http/InitResponse;

    invoke-virtual {v0}, Lcom/rongmzw/frame/sdk/domain/http/InitResponse;->getData()Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;->getSwitchX()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponse:Lcom/rongmzw/frame/sdk/domain/http/InitResponse;

    invoke-virtual {v0}, Lcom/rongmzw/frame/sdk/domain/http/InitResponse;->getData()Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;->getBindstate()I

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    :cond_0
    sget-object v0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mzw callSubGameInfo......gameInfo---->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/rongmzw/frame/sdk/domain/local/RongGameInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->mzwSdkController:Lcom/muzhiwan/sdk/core/MzwSdkController;

    invoke-virtual {p1}, Lcom/rongmzw/frame/sdk/domain/local/RongGameInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/muzhiwan/sdk/core/MzwSdkController;->subGameInfo(Ljava/lang/String;)V

    .line 280
    :goto_0
    return-void

    .line 277
    :cond_1
    sget-object v0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "anzhi callSubGameInfo.....gameInfo--->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->anzhiSDK:Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    invoke-static {p1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->subGameInfo(Ljava/lang/String;)V

    goto :goto_0
.end method
