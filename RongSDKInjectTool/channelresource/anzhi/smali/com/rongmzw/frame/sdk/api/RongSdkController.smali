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
    .line 44
    const-class v0, Lcom/rongmzw/frame/sdk/api/RongSdkController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/rongmzw/frame/sdk/impl/RongSdkRequest;-><init>()V

    .line 46
    const-string v0, "1516014013jo0c8JB0DW9LvRqY5AeI"

    iput-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->appkey:Ljava/lang/String;

    .line 47
    const-string v0, "Yv89xjpW4hw7K76nANrLoqmJ"

    iput-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->appSecret:Ljava/lang/String;

    .line 48
    invoke-static {}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->getInstance()Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    move-result-object v0

    iput-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->anzhiSDK:Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    .line 51
    new-instance v0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;

    invoke-direct {v0, p0}, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;-><init>(Lcom/rongmzw/frame/sdk/api/RongSdkController;)V

    iput-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->callback:Lcom/anzhi/sdk/middle/manage/GameCallBack;

    .line 153
    return-void
.end method

.method synthetic constructor <init>(Lcom/rongmzw/frame/sdk/api/RongSdkController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController$1;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/rongmzw/frame/sdk/api/RongSdkController;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->hasLoopered:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->loginResponse:Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;

    return-object v0
.end method

.method static synthetic access$102(Lcom/rongmzw/frame/sdk/api/RongSdkController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->hasLoopered:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->loginResponse:Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/LoginResponse$DataBean;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->loginResponseDataBean:Lcom/rongmzw/frame/sdk/domain/http/LoginResponse$DataBean;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/LoginResponse$DataBean;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->loginResponseDataBean:Lcom/rongmzw/frame/sdk/domain/http/LoginResponse$DataBean;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponseDataBean:Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/LoginResponse$DataBean;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->loginResponseDataBean:Lcom/rongmzw/frame/sdk/domain/http/LoginResponse$DataBean;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->gameActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->gameActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->gameActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/LoginResponse$DataBean;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->loginResponseDataBean:Lcom/rongmzw/frame/sdk/domain/http/LoginResponse$DataBean;

    return-object v0
.end method

.method static synthetic access$200(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->gameActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->gameActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponseDataBean:Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/LoginResponse$DataBean;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->loginResponseDataBean:Lcom/rongmzw/frame/sdk/domain/http/LoginResponse$DataBean;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->gameActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->gameActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->loginResponse:Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->loginResponse:Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->loginResponse:Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;

    return-object v0
.end method

.method static synthetic access$300(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/anzhi/sdk/middle/manage/AnzhiSDK;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->anzhiSDK:Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/rongmzw/frame/sdk/api/RongSdkController;Lcom/rongmzw/frame/sdk/domain/http/InitResponse;)Lcom/rongmzw/frame/sdk/domain/http/InitResponse;
    .locals 0
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;
    .param p1, "x1"    # Lcom/rongmzw/frame/sdk/domain/http/InitResponse;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponse:Lcom/rongmzw/frame/sdk/domain/http/InitResponse;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/google/gson/Gson;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->gson:Lcom/google/gson/Gson;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/rongmzw/frame/sdk/api/RongSdkController;Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;)Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;
    .locals 0
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;
    .param p1, "x1"    # Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponseDataBean:Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/InitResponse;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponse:Lcom/rongmzw/frame/sdk/domain/http/InitResponse;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponseDataBean:Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponseDataBean:Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponseDataBean:Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponseDataBean:Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/muzhiwan/sdk/core/MzwSdkController;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->mzwSdkController:Lcom/muzhiwan/sdk/core/MzwSdkController;

    return-object v0
.end method

.method static synthetic access$3902(Lcom/rongmzw/frame/sdk/api/RongSdkController;Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean$ParamsBean;)Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean$ParamsBean;
    .locals 0
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;
    .param p1, "x1"    # Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean$ParamsBean;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponseDataParamsBean:Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean$ParamsBean;

    return-object p1
.end method

.method static synthetic access$400(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->gameActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponseDataBean:Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean$ParamsBean;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponseDataParamsBean:Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean$ParamsBean;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->appkey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4202(Lcom/rongmzw/frame/sdk/api/RongSdkController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->appkey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4300(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean$ParamsBean;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponseDataParamsBean:Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean$ParamsBean;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->appSecret:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4402(Lcom/rongmzw/frame/sdk/api/RongSdkController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->appSecret:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4500(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean$ParamsBean;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponseDataParamsBean:Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean$ParamsBean;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/anzhi/sdk/middle/manage/GameCallBack;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->callback:Lcom/anzhi/sdk/middle/manage/GameCallBack;

    return-object v0
.end method

.method static synthetic access$4702(Lcom/rongmzw/frame/sdk/api/RongSdkController;Lcom/rongmzw/frame/sdk/domain/http/PayResponse;)Lcom/rongmzw/frame/sdk/domain/http/PayResponse;
    .locals 0
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;
    .param p1, "x1"    # Lcom/rongmzw/frame/sdk/domain/http/PayResponse;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->payResponse:Lcom/rongmzw/frame/sdk/domain/http/PayResponse;

    return-object p1
.end method

.method static synthetic access$4800(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/google/gson/Gson;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->gson:Lcom/google/gson/Gson;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/PayResponse;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->payResponse:Lcom/rongmzw/frame/sdk/domain/http/PayResponse;

    return-object v0
.end method

.method static synthetic access$500(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/google/gson/Gson;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->gson:Lcom/google/gson/Gson;

    return-object v0
.end method

.method static synthetic access$5002(Lcom/rongmzw/frame/sdk/api/RongSdkController;Lcom/rongmzw/frame/sdk/domain/http/PayResponse$DataBean;)Lcom/rongmzw/frame/sdk/domain/http/PayResponse$DataBean;
    .locals 0
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;
    .param p1, "x1"    # Lcom/rongmzw/frame/sdk/domain/http/PayResponse$DataBean;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->payResponseDataBean:Lcom/rongmzw/frame/sdk/domain/http/PayResponse$DataBean;

    return-object p1
.end method

.method static synthetic access$5100(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/PayResponse;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->payResponse:Lcom/rongmzw/frame/sdk/domain/http/PayResponse;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/PayResponse$DataBean;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->payResponseDataBean:Lcom/rongmzw/frame/sdk/domain/http/PayResponse$DataBean;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/PayResponse$DataBean;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->payResponseDataBean:Lcom/rongmzw/frame/sdk/domain/http/PayResponse$DataBean;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/PayResponse$DataBean;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->payResponseDataBean:Lcom/rongmzw/frame/sdk/domain/http/PayResponse$DataBean;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/PayResponse$DataBean;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->payResponseDataBean:Lcom/rongmzw/frame/sdk/domain/http/PayResponse$DataBean;

    return-object v0
.end method

.method static synthetic access$600(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->gameActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$702(Lcom/rongmzw/frame/sdk/api/RongSdkController;Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;)Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;
    .locals 0
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;
    .param p1, "x1"    # Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->loginResponse:Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;

    return-object p1
.end method

.method static synthetic access$800(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/google/gson/Gson;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->gson:Lcom/google/gson/Gson;

    return-object v0
.end method

.method static synthetic access$902(Lcom/rongmzw/frame/sdk/api/RongSdkController;Lcom/rongmzw/frame/sdk/domain/http/LoginResponse$DataBean;)Lcom/rongmzw/frame/sdk/domain/http/LoginResponse$DataBean;
    .locals 0
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;
    .param p1, "x1"    # Lcom/rongmzw/frame/sdk/domain/http/LoginResponse$DataBean;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->loginResponseDataBean:Lcom/rongmzw/frame/sdk/domain/http/LoginResponse$DataBean;

    return-object p1
.end method

.method public static getInstance()Lcom/rongmzw/frame/sdk/api/RongSdkController;
    .locals 1

    .prologue
    .line 161
    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController$RongSdkControllerHolder;->INSTANCE:Lcom/rongmzw/frame/sdk/api/RongSdkController;
    invoke-static {}, Lcom/rongmzw/frame/sdk/api/RongSdkController$RongSdkControllerHolder;->access$2900()Lcom/rongmzw/frame/sdk/api/RongSdkController;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public callExitGame()V
    .locals 2

    .prologue
    .line 391
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponseDataBean:Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;

    invoke-virtual {v0}, Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;->getSwitchX()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponseDataBean:Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;

    invoke-virtual {v0}, Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;->getSwitchX()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponseDataBean:Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;

    invoke-virtual {v0}, Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;->getBindstate()I

    move-result v0

    if-eqz v0, :cond_1

    .line 392
    :cond_0
    sget-object v0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->TAG:Ljava/lang/String;

    const-string v1, "mzw callExitGame......"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const-string v0, "exitGame success......"

    invoke-static {v0}, Lcom/rongmzw/frame/sdk/callback/RongCallBackUtils;->exitGameSuccessCallBack(Ljava/lang/String;)V

    .line 398
    :goto_0
    return-void

    .line 395
    :cond_1
    sget-object v0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->TAG:Ljava/lang/String;

    const-string v1, "anzhi callExitGame......"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->anzhiSDK:Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    iget-object v1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->gameActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->exitGame(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public callInit(Landroid/app/Activity;ILcom/rongmzw/frame/sdk/callback/RongCallback;)V
    .locals 3
    .param p1, "gameActivity"    # Landroid/app/Activity;
    .param p2, "screenOrientation"    # I
    .param p3, "rongCallback"    # Lcom/rongmzw/frame/sdk/callback/RongCallback;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->gameActivity:Landroid/app/Activity;

    .line 167
    sput-object p3, Lcom/rongmzw/frame/sdk/callback/RongCallBackUtils;->rongCallback:Lcom/rongmzw/frame/sdk/callback/RongCallback;

    .line 168
    invoke-static {p1}, Lcom/rongmzw/frame/sdk/utils/ParamUtils;->getGeneralParams(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    .line 169
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "channelversion"

    const/16 v2, 0x193

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    new-instance v1, Lcom/rongmzw/frame/sdk/api/RongSdkController$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/rongmzw/frame/sdk/api/RongSdkController$2;-><init>(Lcom/rongmzw/frame/sdk/api/RongSdkController;Landroid/app/Activity;I)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->initRequest(Landroid/app/Activity;Ljava/util/Map;Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;)V

    .line 204
    return-void
.end method

.method public callLogin()V
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponseDataBean:Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;

    invoke-virtual {v0}, Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;->getSwitchX()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponseDataBean:Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;

    invoke-virtual {v0}, Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;->getSwitchX()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponseDataBean:Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;

    invoke-virtual {v0}, Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;->getBindstate()I

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    :cond_0
    sget-object v0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->TAG:Ljava/lang/String;

    const-string v1, "mzw callLogin......"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->mzwSdkController:Lcom/muzhiwan/sdk/core/MzwSdkController;

    new-instance v1, Lcom/rongmzw/frame/sdk/api/RongSdkController$3;

    invoke-direct {v1, p0}, Lcom/rongmzw/frame/sdk/api/RongSdkController$3;-><init>(Lcom/rongmzw/frame/sdk/api/RongSdkController;)V

    invoke-virtual {v0, v1}, Lcom/muzhiwan/sdk/core/MzwSdkController;->doLogin(Lcom/muzhiwan/sdk/core/callback/MzwLoignCallback;)V

    .line 220
    :goto_0
    return-void

    .line 217
    :cond_1
    sget-object v0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->TAG:Ljava/lang/String;

    const-string v1, "anzhi callLogin......"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->anzhiSDK:Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    iget-object v1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->gameActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->login(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public callLogout()V
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponseDataBean:Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;

    invoke-virtual {v0}, Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;->getSwitchX()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponseDataBean:Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;

    invoke-virtual {v0}, Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;->getSwitchX()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponseDataBean:Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;

    invoke-virtual {v0}, Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;->getBindstate()I

    move-result v0

    if-eqz v0, :cond_1

    .line 309
    :cond_0
    sget-object v0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->TAG:Ljava/lang/String;

    const-string v1, "mzw callLogout......"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->mzwSdkController:Lcom/muzhiwan/sdk/core/MzwSdkController;

    invoke-virtual {v0}, Lcom/muzhiwan/sdk/core/MzwSdkController;->doLogout()V

    .line 315
    :goto_0
    return-void

    .line 312
    :cond_1
    sget-object v0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->TAG:Ljava/lang/String;

    const-string v1, "anzhi callLogout......"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->anzhiSDK:Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    invoke-virtual {v0}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->logout()V

    goto :goto_0
.end method

.method public callOnDestoryInvoked()V
    .locals 2

    .prologue
    .line 384
    sget-object v0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->TAG:Ljava/lang/String;

    const-string v1, "anzhi callOnDestoryInvoked......"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->anzhiSDK:Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    invoke-virtual {v0}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->onDestoryInvoked()V

    .line 387
    return-void
.end method

.method public callOnNewIntentInvoked(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 333
    sget-object v0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->TAG:Ljava/lang/String;

    const-string v1, "anzhi callOnNewIntentInvoked......"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->anzhiSDK:Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    invoke-virtual {v0, p1}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->onNewIntentInvoked(Landroid/content/Intent;)V

    .line 336
    return-void
.end method

.method public callOnPauseInvoked()V
    .locals 2

    .prologue
    .line 363
    sget-object v0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->TAG:Ljava/lang/String;

    const-string v1, "anzhi callOnPauseInvoked......"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->anzhiSDK:Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    invoke-virtual {v0}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->onPauseInvoked()V

    .line 366
    return-void
.end method

.method public callOnResumeInvoked()V
    .locals 2

    .prologue
    .line 343
    sget-object v0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->TAG:Ljava/lang/String;

    const-string v1, "anzhi callOnResumeInvoked......"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->anzhiSDK:Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    invoke-virtual {v0}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->onResumeInvoked()V

    .line 346
    return-void
.end method

.method public callOnStartInvoked()V
    .locals 2

    .prologue
    .line 353
    sget-object v0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->TAG:Ljava/lang/String;

    const-string v1, "anzhi callOnStartInvoked......"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->anzhiSDK:Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    invoke-virtual {v0}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->onStartInvoked()V

    .line 356
    return-void
.end method

.method public callOnStopInvoked()V
    .locals 2

    .prologue
    .line 373
    sget-object v0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->TAG:Ljava/lang/String;

    const-string v1, "anzhi callOnStopInvoked......"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->anzhiSDK:Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    invoke-virtual {v0}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->onStopInvoked()V

    .line 376
    return-void
.end method

.method public callPay(Lcom/rongmzw/frame/sdk/domain/local/RongOrder;)V
    .locals 11
    .param p1, "rongMzwOrder"    # Lcom/rongmzw/frame/sdk/domain/local/RongOrder;

    .prologue
    .line 224
    iget-object v8, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponseDataBean:Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;

    invoke-virtual {v8}, Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;->getSwitchX()I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_0

    iget-object v8, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponseDataBean:Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;

    invoke-virtual {v8}, Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;->getSwitchX()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    iget-object v8, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponseDataBean:Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;

    invoke-virtual {v8}, Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;->getBindstate()I

    move-result v8

    if-eqz v8, :cond_1

    .line 225
    :cond_0
    new-instance v1, Lcom/muzhiwan/sdk/service/MzwOrder;

    invoke-direct {v1}, Lcom/muzhiwan/sdk/service/MzwOrder;-><init>()V

    .line 226
    .local v1, "mzwOrder":Lcom/muzhiwan/sdk/service/MzwOrder;
    invoke-virtual {p1}, Lcom/rongmzw/frame/sdk/domain/local/RongOrder;->getProductPrice()I

    move-result v8

    int-to-double v8, v8

    invoke-virtual {v1, v8, v9}, Lcom/muzhiwan/sdk/service/MzwOrder;->setMoney(D)V

    .line 227
    invoke-virtual {p1}, Lcom/rongmzw/frame/sdk/domain/local/RongOrder;->getProductDesc()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/muzhiwan/sdk/service/MzwOrder;->setProductdesc(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p1}, Lcom/rongmzw/frame/sdk/domain/local/RongOrder;->getProductId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/muzhiwan/sdk/service/MzwOrder;->setProductid(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p1}, Lcom/rongmzw/frame/sdk/domain/local/RongOrder;->getProductName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/muzhiwan/sdk/service/MzwOrder;->setProductname(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p1}, Lcom/rongmzw/frame/sdk/domain/local/RongOrder;->getExtern()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/muzhiwan/sdk/service/MzwOrder;->setExtern(Ljava/lang/String;)V

    .line 231
    iget-object v8, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->mzwSdkController:Lcom/muzhiwan/sdk/core/MzwSdkController;

    new-instance v9, Lcom/rongmzw/frame/sdk/api/RongSdkController$4;

    invoke-direct {v9, p0}, Lcom/rongmzw/frame/sdk/api/RongSdkController$4;-><init>(Lcom/rongmzw/frame/sdk/api/RongSdkController;)V

    invoke-virtual {v8, v1, v9}, Lcom/muzhiwan/sdk/core/MzwSdkController;->doPay(Lcom/muzhiwan/sdk/service/MzwOrder;Lcom/muzhiwan/sdk/core/callback/MzwPayCallback;)V

    .line 295
    .end local v1    # "mzwOrder":Lcom/muzhiwan/sdk/service/MzwOrder;
    :goto_0
    return-void

    .line 238
    :cond_1
    iget-object v8, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponseDataBean:Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;

    invoke-virtual {v8}, Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;->getApilevel()I

    move-result v8

    if-nez v8, :cond_2

    .line 239
    sget-object v8, Lcom/rongmzw/frame/sdk/api/RongSdkController;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "anzhi callPay......rongMzwOrder--->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-virtual {p1}, Lcom/rongmzw/frame/sdk/domain/local/RongOrder;->getProductId()Ljava/lang/String;

    move-result-object v4

    .line 241
    .local v4, "productId":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/rongmzw/frame/sdk/domain/local/RongOrder;->getProductName()Ljava/lang/String;

    move-result-object v5

    .line 242
    .local v5, "productName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/rongmzw/frame/sdk/domain/local/RongOrder;->getProductDesc()Ljava/lang/String;

    move-result-object v3

    .line 243
    .local v3, "productDesc":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/rongmzw/frame/sdk/domain/local/RongOrder;->getExtern()Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "extern":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/rongmzw/frame/sdk/domain/local/RongOrder;->getProductPrice()I

    move-result v6

    .line 246
    .local v6, "productPrice":I
    new-instance v7, Lcom/rongmzw/frame/sdk/domain/local/RongOrderInfo;

    invoke-direct {v7}, Lcom/rongmzw/frame/sdk/domain/local/RongOrderInfo;-><init>()V

    .line 247
    .local v7, "rongOrderInfo":Lcom/rongmzw/frame/sdk/domain/local/RongOrderInfo;
    invoke-virtual {v7, v4}, Lcom/rongmzw/frame/sdk/domain/local/RongOrderInfo;->setProductid(Ljava/lang/String;)V

    .line 248
    invoke-virtual {v7, v5}, Lcom/rongmzw/frame/sdk/domain/local/RongOrderInfo;->setSubject(Ljava/lang/String;)V

    .line 249
    invoke-virtual {v7, v3}, Lcom/rongmzw/frame/sdk/domain/local/RongOrderInfo;->setProductdesc(Ljava/lang/String;)V

    .line 250
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/rongmzw/frame/sdk/domain/local/RongOrderInfo;->setAmount(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v7, v0}, Lcom/rongmzw/frame/sdk/domain/local/RongOrderInfo;->setExtern(Ljava/lang/String;)V

    .line 253
    iget-object v8, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->gameActivity:Landroid/app/Activity;

    invoke-static {v8}, Lcom/rongmzw/frame/sdk/utils/ParamUtils;->getGeneralParams(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v2

    .line 254
    .local v2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v8, "orderinfo"

    iget-object v9, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v9, v7}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    const-string v8, "channelversion"

    const/16 v9, 0x193

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    iget-object v8, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->gameActivity:Landroid/app/Activity;

    new-instance v9, Lcom/rongmzw/frame/sdk/api/RongSdkController$5;

    invoke-direct {v9, p0, v4, v5, v3}, Lcom/rongmzw/frame/sdk/api/RongSdkController$5;-><init>(Lcom/rongmzw/frame/sdk/api/RongSdkController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v8, v2, v9}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->payRequest(Landroid/app/Activity;Ljava/util/Map;Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;)V

    goto/16 :goto_0

    .line 292
    .end local v0    # "extern":Ljava/lang/String;
    .end local v2    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "productDesc":Ljava/lang/String;
    .end local v4    # "productId":Ljava/lang/String;
    .end local v5    # "productName":Ljava/lang/String;
    .end local v6    # "productPrice":I
    .end local v7    # "rongOrderInfo":Lcom/rongmzw/frame/sdk/domain/local/RongOrderInfo;
    :cond_2
    const-string v8, "current channel stop recharge function"

    invoke-static {v8}, Lcom/rongmzw/frame/sdk/callback/RongCallBackUtils;->payFailedCallBack(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public callStaPay()V
    .locals 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponseDataBean:Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;

    invoke-virtual {v0}, Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;->getSwitchX()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponseDataBean:Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;

    invoke-virtual {v0}, Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;->getSwitchX()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponseDataBean:Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;

    invoke-virtual {v0}, Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;->getBindstate()I

    move-result v0

    if-eqz v0, :cond_1

    .line 300
    :cond_0
    sget-object v0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->TAG:Ljava/lang/String;

    const-string v1, "mzw callStaPay......"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :goto_0
    return-void

    .line 302
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
    .line 319
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponseDataBean:Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;

    invoke-virtual {v0}, Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;->getSwitchX()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponseDataBean:Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;

    invoke-virtual {v0}, Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;->getSwitchX()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponseDataBean:Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;

    invoke-virtual {v0}, Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;->getBindstate()I

    move-result v0

    if-eqz v0, :cond_1

    .line 320
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

    .line 321
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->mzwSdkController:Lcom/muzhiwan/sdk/core/MzwSdkController;

    invoke-virtual {p1}, Lcom/rongmzw/frame/sdk/domain/local/RongGameInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/muzhiwan/sdk/core/MzwSdkController;->subGameInfo(Ljava/lang/String;)V

    .line 326
    :goto_0
    return-void

    .line 323
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

    .line 324
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->anzhiSDK:Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    invoke-static {p1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->subGameInfo(Ljava/lang/String;)V

    goto :goto_0
.end method
