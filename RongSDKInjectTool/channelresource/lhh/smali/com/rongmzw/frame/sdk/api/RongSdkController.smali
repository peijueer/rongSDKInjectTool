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

.field private static lehihiGameSDKApi:Lcom/zqhy/sdk/platform/LehihiGameSDKApi;

.field private static strAppkey:Ljava/lang/String;

.field private static strPid:I


# instance fields
.field reLoginCallBack:Lcom/zqhy/sdk/callback/ReLoginCallBack;

.field private strRoleId:Ljava/lang/String;

.field private strRoleName:Ljava/lang/String;

.field private strServerId:Ljava/lang/String;

.field private strServerName:Ljava/lang/String;

.field private strToken:Ljava/lang/String;

.field private strUsername:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/rongmzw/frame/sdk/api/RongSdkController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->TAG:Ljava/lang/String;

    .line 46
    invoke-static {}, Lcom/zqhy/sdk/platform/LehihiGameSDKApi;->getInstance()Lcom/zqhy/sdk/platform/LehihiGameSDKApi;

    move-result-object v0

    sput-object v0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->lehihiGameSDKApi:Lcom/zqhy/sdk/platform/LehihiGameSDKApi;

    .line 47
    const/4 v0, 0x1

    sput v0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->strPid:I

    .line 48
    const-string v0, "4ab0c69e7c28b07276b465feb3f2de05"

    sput-object v0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->strAppkey:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/rongmzw/frame/sdk/impl/RongSdkRequest;-><init>()V

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->strUsername:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->strToken:Ljava/lang/String;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->strServerId:Ljava/lang/String;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->strRoleId:Ljava/lang/String;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->strServerName:Ljava/lang/String;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->strRoleName:Ljava/lang/String;

    .line 368
    new-instance v0, Lcom/rongmzw/frame/sdk/api/RongSdkController$6;

    invoke-direct {v0, p0}, Lcom/rongmzw/frame/sdk/api/RongSdkController$6;-><init>(Lcom/rongmzw/frame/sdk/api/RongSdkController;)V

    iput-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->reLoginCallBack:Lcom/zqhy/sdk/callback/ReLoginCallBack;

    .line 61
    return-void
.end method

.method synthetic constructor <init>(Lcom/rongmzw/frame/sdk/api/RongSdkController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController$1;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/rongmzw/frame/sdk/api/RongSdkController;-><init>()V

    return-void
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/muzhiwan/sdk/core/MzwSdkController;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->mzwSdkController:Lcom/muzhiwan/sdk/core/MzwSdkController;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/rongmzw/frame/sdk/api/RongSdkController;Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean$ParamsBean;)Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean$ParamsBean;
    .locals 0
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;
    .param p1, "x1"    # Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean$ParamsBean;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponseDataParamsBean:Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean$ParamsBean;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponseDataBean:Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean$ParamsBean;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponseDataParamsBean:Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean$ParamsBean;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/rongmzw/frame/sdk/api/RongSdkController;Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean$ParamsBean$ExtraBean;)Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean$ParamsBean$ExtraBean;
    .locals 0
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;
    .param p1, "x1"    # Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean$ParamsBean$ExtraBean;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponseDataParamsExtraBean:Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean$ParamsBean$ExtraBean;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean$ParamsBean;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponseDataParamsBean:Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean$ParamsBean;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean$ParamsBean$ExtraBean;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponseDataParamsExtraBean:Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean$ParamsBean$ExtraBean;

    return-object v0
.end method

.method static synthetic access$1800()I
    .locals 1

    .prologue
    .line 44
    sget v0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->strPid:I

    return v0
.end method

.method static synthetic access$1802(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 44
    sput p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->strPid:I

    return p0
.end method

.method static synthetic access$1900(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean$ParamsBean$ExtraBean;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponseDataParamsExtraBean:Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean$ParamsBean$ExtraBean;

    return-object v0
.end method

.method static synthetic access$2000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->strAppkey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 44
    sput-object p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->strAppkey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lcom/rongmzw/frame/sdk/api/RongSdkController;Lcom/rongmzw/frame/sdk/domain/http/InitResponse;)Lcom/rongmzw/frame/sdk/domain/http/InitResponse;
    .locals 0
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;
    .param p1, "x1"    # Lcom/rongmzw/frame/sdk/domain/http/InitResponse;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponse:Lcom/rongmzw/frame/sdk/domain/http/InitResponse;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean$ParamsBean;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponseDataParamsBean:Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean$ParamsBean;

    return-object v0
.end method

.method static synthetic access$2200()Lcom/zqhy/sdk/platform/LehihiGameSDKApi;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->lehihiGameSDKApi:Lcom/zqhy/sdk/platform/LehihiGameSDKApi;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/rongmzw/frame/sdk/api/RongSdkController;)V
    .locals 0
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->login()V

    return-void
.end method

.method static synthetic access$2402(Lcom/rongmzw/frame/sdk/api/RongSdkController;Lcom/rongmzw/frame/sdk/domain/http/PayResponse;)Lcom/rongmzw/frame/sdk/domain/http/PayResponse;
    .locals 0
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;
    .param p1, "x1"    # Lcom/rongmzw/frame/sdk/domain/http/PayResponse;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->payResponse:Lcom/rongmzw/frame/sdk/domain/http/PayResponse;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/google/gson/Gson;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->gson:Lcom/google/gson/Gson;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/PayResponse;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->payResponse:Lcom/rongmzw/frame/sdk/domain/http/PayResponse;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/rongmzw/frame/sdk/api/RongSdkController;Lcom/rongmzw/frame/sdk/domain/http/PayResponse$DataBean;)Lcom/rongmzw/frame/sdk/domain/http/PayResponse$DataBean;
    .locals 0
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;
    .param p1, "x1"    # Lcom/rongmzw/frame/sdk/domain/http/PayResponse$DataBean;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->payResponseDataBean:Lcom/rongmzw/frame/sdk/domain/http/PayResponse$DataBean;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/PayResponse;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->payResponse:Lcom/rongmzw/frame/sdk/domain/http/PayResponse;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/PayResponse$DataBean;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->payResponseDataBean:Lcom/rongmzw/frame/sdk/domain/http/PayResponse$DataBean;

    return-object v0
.end method

.method static synthetic access$300(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/google/gson/Gson;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->gson:Lcom/google/gson/Gson;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->strServerId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/rongmzw/frame/sdk/api/RongSdkController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->strServerId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->strServerName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/rongmzw/frame/sdk/api/RongSdkController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->strServerName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->strRoleId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/rongmzw/frame/sdk/api/RongSdkController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->strRoleId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->strRoleName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/rongmzw/frame/sdk/api/RongSdkController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->strRoleName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/PayResponse$DataBean;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->payResponseDataBean:Lcom/rongmzw/frame/sdk/domain/http/PayResponse$DataBean;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->strUsername:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/rongmzw/frame/sdk/api/RongSdkController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->strUsername:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->strToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/rongmzw/frame/sdk/api/RongSdkController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->strToken:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3700(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/PayResponse$DataBean;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->payResponseDataBean:Lcom/rongmzw/frame/sdk/domain/http/PayResponse$DataBean;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->gameActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->gameActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->gameActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$402(Lcom/rongmzw/frame/sdk/api/RongSdkController;Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;)Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;
    .locals 0
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;
    .param p1, "x1"    # Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponseDataBean:Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/google/gson/Gson;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->gson:Lcom/google/gson/Gson;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->gameActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$4302(Lcom/rongmzw/frame/sdk/api/RongSdkController;Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;)Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;
    .locals 0
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;
    .param p1, "x1"    # Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->loginResponse:Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;

    return-object p1
.end method

.method static synthetic access$4400(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/google/gson/Gson;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->gson:Lcom/google/gson/Gson;

    return-object v0
.end method

.method static synthetic access$4502(Lcom/rongmzw/frame/sdk/api/RongSdkController;Lcom/rongmzw/frame/sdk/domain/http/LoginResponse$DataBean;)Lcom/rongmzw/frame/sdk/domain/http/LoginResponse$DataBean;
    .locals 0
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;
    .param p1, "x1"    # Lcom/rongmzw/frame/sdk/domain/http/LoginResponse$DataBean;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->loginResponseDataBean:Lcom/rongmzw/frame/sdk/domain/http/LoginResponse$DataBean;

    return-object p1
.end method

.method static synthetic access$4600(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->loginResponse:Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->loginResponse:Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/LoginResponse$DataBean;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->loginResponseDataBean:Lcom/rongmzw/frame/sdk/domain/http/LoginResponse$DataBean;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/LoginResponse$DataBean;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->loginResponseDataBean:Lcom/rongmzw/frame/sdk/domain/http/LoginResponse$DataBean;

    return-object v0
.end method

.method static synthetic access$500(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/InitResponse;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponse:Lcom/rongmzw/frame/sdk/domain/http/InitResponse;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponseDataBean:Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/LoginResponse$DataBean;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->loginResponseDataBean:Lcom/rongmzw/frame/sdk/domain/http/LoginResponse$DataBean;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->gameActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->gameActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->gameActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/LoginResponse$DataBean;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->loginResponseDataBean:Lcom/rongmzw/frame/sdk/domain/http/LoginResponse$DataBean;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->gameActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponseDataBean:Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/LoginResponse$DataBean;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->loginResponseDataBean:Lcom/rongmzw/frame/sdk/domain/http/LoginResponse$DataBean;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->gameActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponseDataBean:Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->gameActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->loginResponse:Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->loginResponse:Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->loginResponse:Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;

    return-object v0
.end method

.method static synthetic access$700(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponseDataBean:Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;

    return-object v0
.end method

.method static synthetic access$800(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponseDataBean:Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;

    return-object v0
.end method

.method static synthetic access$900(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponseDataBean:Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;

    return-object v0
.end method

.method public static getInstance()Lcom/rongmzw/frame/sdk/api/RongSdkController;
    .locals 1

    .prologue
    .line 69
    invoke-static {}, Lcom/rongmzw/frame/sdk/api/RongSdkController$RongSdkControllerHolder;->access$100()Lcom/rongmzw/frame/sdk/api/RongSdkController;

    move-result-object v0

    return-object v0
.end method

.method private login()V
    .locals 3

    .prologue
    .line 376
    sget-object v0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->lehihiGameSDKApi:Lcom/zqhy/sdk/platform/LehihiGameSDKApi;

    iget-object v1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->gameActivity:Landroid/app/Activity;

    new-instance v2, Lcom/rongmzw/frame/sdk/api/RongSdkController$7;

    invoke-direct {v2, p0}, Lcom/rongmzw/frame/sdk/api/RongSdkController$7;-><init>(Lcom/rongmzw/frame/sdk/api/RongSdkController;)V

    invoke-virtual {v0, v1, v2}, Lcom/zqhy/sdk/platform/LehihiGameSDKApi;->login(Landroid/app/Activity;Lcom/zqhy/sdk/callback/LoginCallBack;)V

    .line 440
    return-void
.end method


# virtual methods
.method public callExitGame()V
    .locals 5

    .prologue
    .line 341
    const/4 v0, 0x0

    .line 342
    .local v0, "orientation":I
    sget-object v1, Lcom/rongmzw/frame/sdk/api/RongSdkController;->lehihiGameSDKApi:Lcom/zqhy/sdk/platform/LehihiGameSDKApi;

    iget-object v2, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->gameActivity:Landroid/app/Activity;

    new-instance v3, Lcom/rongmzw/frame/sdk/api/RongSdkController$5;

    invoke-direct {v3, p0}, Lcom/rongmzw/frame/sdk/api/RongSdkController$5;-><init>(Lcom/rongmzw/frame/sdk/api/RongSdkController;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/zqhy/sdk/platform/LehihiGameSDKApi;->exit(Landroid/app/Activity;ILcom/zqhy/sdk/callback/ExitCallBack;Lcom/zqhy/sdk/callback/LocalExitCallBack;)V

    .line 366
    return-void
.end method

.method public callInit(Landroid/app/Activity;ILcom/rongmzw/frame/sdk/callback/RongCallback;)V
    .locals 3
    .param p1, "gameActivity"    # Landroid/app/Activity;
    .param p2, "screenOrientation"    # I
    .param p3, "rongCallback"    # Lcom/rongmzw/frame/sdk/callback/RongCallback;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->gameActivity:Landroid/app/Activity;

    .line 75
    sput-object p3, Lcom/rongmzw/frame/sdk/callback/RongCallBackUtils;->rongCallback:Lcom/rongmzw/frame/sdk/callback/RongCallback;

    .line 77
    invoke-static {p1}, Lcom/rongmzw/frame/sdk/utils/ParamUtils;->getGeneralParams(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    .line 78
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "channelversion"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    new-instance v1, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;-><init>(Lcom/rongmzw/frame/sdk/api/RongSdkController;Landroid/app/Activity;I)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->initRequest(Landroid/app/Activity;Ljava/util/Map;Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;)V

    .line 130
    return-void
.end method

.method public callLogin()V
    .locals 2

    .prologue
    .line 134
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

    .line 135
    :cond_0
    sget-object v0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->TAG:Ljava/lang/String;

    const-string v1, "mzw callLogin......"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->mzwSdkController:Lcom/muzhiwan/sdk/core/MzwSdkController;

    new-instance v1, Lcom/rongmzw/frame/sdk/api/RongSdkController$2;

    invoke-direct {v1, p0}, Lcom/rongmzw/frame/sdk/api/RongSdkController$2;-><init>(Lcom/rongmzw/frame/sdk/api/RongSdkController;)V

    invoke-virtual {v0, v1}, Lcom/muzhiwan/sdk/core/MzwSdkController;->doLogin(Lcom/muzhiwan/sdk/core/callback/MzwLoignCallback;)V

    .line 146
    :goto_0
    return-void

    .line 143
    :cond_1
    sget-object v0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->TAG:Ljava/lang/String;

    const-string v1, "lhh callLogin......"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-direct {p0}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->login()V

    goto :goto_0
.end method

.method public callLogout()V
    .locals 2

    .prologue
    .line 258
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

    .line 259
    :cond_0
    sget-object v0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->TAG:Ljava/lang/String;

    const-string v1, "mzw callLogout......"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->mzwSdkController:Lcom/muzhiwan/sdk/core/MzwSdkController;

    invoke-virtual {v0}, Lcom/muzhiwan/sdk/core/MzwSdkController;->doLogout()V

    .line 264
    :goto_0
    return-void

    .line 262
    :cond_1
    sget-object v0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->TAG:Ljava/lang/String;

    const-string v1, "lhh callLogout......"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public callOnDestoryInvoked()V
    .locals 2

    .prologue
    .line 334
    sget-object v0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->TAG:Ljava/lang/String;

    const-string v1, "lhh callOnDestoryInvoked......"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->gameActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zqhy/sdk/ui/FloatWindowManager;->getInstance(Landroid/content/Context;)Lcom/zqhy/sdk/ui/FloatWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zqhy/sdk/ui/FloatWindowManager;->destroyFloat()V

    .line 337
    return-void
.end method

.method public callOnNewIntentInvoked(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 286
    sget-object v0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->TAG:Ljava/lang/String;

    const-string v1, "lhh callOnNewIntentInvoked......"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    return-void
.end method

.method public callOnPauseInvoked()V
    .locals 2

    .prologue
    .line 314
    sget-object v0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->TAG:Ljava/lang/String;

    const-string v1, "lhh callOnPauseInvoked......"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    return-void
.end method

.method public callOnResumeInvoked()V
    .locals 2

    .prologue
    .line 295
    sget-object v0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->TAG:Ljava/lang/String;

    const-string v1, "lhh callOnResumeInvoked......"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->gameActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zqhy/sdk/ui/FloatWindowManager;->getInstance(Landroid/content/Context;)Lcom/zqhy/sdk/ui/FloatWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zqhy/sdk/ui/FloatWindowManager;->showFloat()V

    .line 298
    return-void
.end method

.method public callOnStartInvoked()V
    .locals 2

    .prologue
    .line 305
    sget-object v0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->TAG:Ljava/lang/String;

    const-string v1, "lhh callOnStartInvoked......"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    return-void
.end method

.method public callOnStopInvoked()V
    .locals 2

    .prologue
    .line 323
    sget-object v0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->TAG:Ljava/lang/String;

    const-string v1, "lhh callOnStopInvoked......"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->gameActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zqhy/sdk/ui/FloatWindowManager;->getInstance(Landroid/content/Context;)Lcom/zqhy/sdk/ui/FloatWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zqhy/sdk/ui/FloatWindowManager;->hideFloat()V

    .line 326
    return-void
.end method

.method public callPay(Lcom/rongmzw/frame/sdk/domain/local/RongOrder;)V
    .locals 11
    .param p1, "rongMzwOrder"    # Lcom/rongmzw/frame/sdk/domain/local/RongOrder;

    .prologue
    .line 150
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

    .line 151
    :cond_0
    new-instance v1, Lcom/muzhiwan/sdk/service/MzwOrder;

    invoke-direct {v1}, Lcom/muzhiwan/sdk/service/MzwOrder;-><init>()V

    .line 152
    .local v1, "mzwOrder":Lcom/muzhiwan/sdk/service/MzwOrder;
    invoke-virtual {p1}, Lcom/rongmzw/frame/sdk/domain/local/RongOrder;->getProductPrice()I

    move-result v8

    int-to-double v8, v8

    invoke-virtual {v1, v8, v9}, Lcom/muzhiwan/sdk/service/MzwOrder;->setMoney(D)V

    .line 153
    invoke-virtual {p1}, Lcom/rongmzw/frame/sdk/domain/local/RongOrder;->getProductDesc()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/muzhiwan/sdk/service/MzwOrder;->setProductdesc(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p1}, Lcom/rongmzw/frame/sdk/domain/local/RongOrder;->getProductId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/muzhiwan/sdk/service/MzwOrder;->setProductid(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p1}, Lcom/rongmzw/frame/sdk/domain/local/RongOrder;->getProductName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/muzhiwan/sdk/service/MzwOrder;->setProductname(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p1}, Lcom/rongmzw/frame/sdk/domain/local/RongOrder;->getExtern()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/muzhiwan/sdk/service/MzwOrder;->setExtern(Ljava/lang/String;)V

    .line 157
    iget-object v8, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->mzwSdkController:Lcom/muzhiwan/sdk/core/MzwSdkController;

    new-instance v9, Lcom/rongmzw/frame/sdk/api/RongSdkController$3;

    invoke-direct {v9, p0}, Lcom/rongmzw/frame/sdk/api/RongSdkController$3;-><init>(Lcom/rongmzw/frame/sdk/api/RongSdkController;)V

    invoke-virtual {v8, v1, v9}, Lcom/muzhiwan/sdk/core/MzwSdkController;->doPay(Lcom/muzhiwan/sdk/service/MzwOrder;Lcom/muzhiwan/sdk/core/callback/MzwPayCallback;)V

    .line 245
    .end local v1    # "mzwOrder":Lcom/muzhiwan/sdk/service/MzwOrder;
    :goto_0
    return-void

    .line 164
    :cond_1
    iget-object v8, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponseDataBean:Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;

    invoke-virtual {v8}, Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;->getApilevel()I

    move-result v8

    if-nez v8, :cond_2

    .line 165
    sget-object v8, Lcom/rongmzw/frame/sdk/api/RongSdkController;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "lhh callPay......rongMzwOrder--->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-virtual {p1}, Lcom/rongmzw/frame/sdk/domain/local/RongOrder;->getProductId()Ljava/lang/String;

    move-result-object v4

    .line 167
    .local v4, "productId":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/rongmzw/frame/sdk/domain/local/RongOrder;->getProductName()Ljava/lang/String;

    move-result-object v5

    .line 168
    .local v5, "productName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/rongmzw/frame/sdk/domain/local/RongOrder;->getProductDesc()Ljava/lang/String;

    move-result-object v3

    .line 169
    .local v3, "productDesc":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/rongmzw/frame/sdk/domain/local/RongOrder;->getExtern()Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "extern":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/rongmzw/frame/sdk/domain/local/RongOrder;->getProductPrice()I

    move-result v6

    .line 172
    .local v6, "productPrice":I
    new-instance v7, Lcom/rongmzw/frame/sdk/domain/local/RongOrderInfo;

    invoke-direct {v7}, Lcom/rongmzw/frame/sdk/domain/local/RongOrderInfo;-><init>()V

    .line 173
    .local v7, "rongOrderInfo":Lcom/rongmzw/frame/sdk/domain/local/RongOrderInfo;
    invoke-virtual {v7, v4}, Lcom/rongmzw/frame/sdk/domain/local/RongOrderInfo;->setProductid(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v7, v5}, Lcom/rongmzw/frame/sdk/domain/local/RongOrderInfo;->setSubject(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v7, v3}, Lcom/rongmzw/frame/sdk/domain/local/RongOrderInfo;->setProductdesc(Ljava/lang/String;)V

    .line 176
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

    .line 177
    invoke-virtual {v7, v0}, Lcom/rongmzw/frame/sdk/domain/local/RongOrderInfo;->setExtern(Ljava/lang/String;)V

    .line 179
    iget-object v8, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->gameActivity:Landroid/app/Activity;

    invoke-static {v8}, Lcom/rongmzw/frame/sdk/utils/ParamUtils;->getGeneralParams(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v2

    .line 180
    .local v2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v8, "orderinfo"

    iget-object v9, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v9, v7}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const-string v8, "channelversion"

    const-string v9, ""

    invoke-interface {v2, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    iget-object v8, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->gameActivity:Landroid/app/Activity;

    new-instance v9, Lcom/rongmzw/frame/sdk/api/RongSdkController$4;

    invoke-direct {v9, p0, p1}, Lcom/rongmzw/frame/sdk/api/RongSdkController$4;-><init>(Lcom/rongmzw/frame/sdk/api/RongSdkController;Lcom/rongmzw/frame/sdk/domain/local/RongOrder;)V

    invoke-virtual {p0, v8, v2, v9}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->payRequest(Landroid/app/Activity;Ljava/util/Map;Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;)V

    goto :goto_0

    .line 242
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
    .line 249
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

    .line 250
    :cond_0
    sget-object v0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->TAG:Ljava/lang/String;

    const-string v1, "mzw callStaPay......"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :goto_0
    return-void

    .line 252
    :cond_1
    sget-object v0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->TAG:Ljava/lang/String;

    const-string v1, "lhh callStaPay......"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public callSubGameInfo(Lcom/rongmzw/frame/sdk/domain/local/RongGameInfo;)V
    .locals 3
    .param p1, "gameInfo"    # Lcom/rongmzw/frame/sdk/domain/local/RongGameInfo;

    .prologue
    .line 268
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

    .line 269
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

    .line 270
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->mzwSdkController:Lcom/muzhiwan/sdk/core/MzwSdkController;

    invoke-virtual {p1}, Lcom/rongmzw/frame/sdk/domain/local/RongGameInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/muzhiwan/sdk/core/MzwSdkController;->subGameInfo(Ljava/lang/String;)V

    .line 279
    :goto_0
    return-void

    .line 272
    :cond_1
    invoke-virtual {p1}, Lcom/rongmzw/frame/sdk/domain/local/RongGameInfo;->getGameAreaId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->strServerId:Ljava/lang/String;

    .line 273
    invoke-virtual {p1}, Lcom/rongmzw/frame/sdk/domain/local/RongGameInfo;->getGameArea()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->strServerName:Ljava/lang/String;

    .line 274
    invoke-virtual {p1}, Lcom/rongmzw/frame/sdk/domain/local/RongGameInfo;->getRoleId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->strRoleId:Ljava/lang/String;

    .line 275
    invoke-virtual {p1}, Lcom/rongmzw/frame/sdk/domain/local/RongGameInfo;->getUserRole()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->strRoleName:Ljava/lang/String;

    .line 277
    sget-object v0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lhh callSubGameInfo.....gameInfo--->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
