.class public final Lcom/ipaynow/qqpay/plugin/manager/a/a;
.super Ljava/lang/Object;


# instance fields
.field private an:Z

.field private ao:Z

.field private ap:Z

.field private aq:Z

.field private ar:Z

.field private as:Z

.field private at:Z

.field private au:Z

.field private av:Z

.field private aw:Landroid/app/Activity;

.field private ax:Landroid/content/Context;

.field private ay:Lcom/ipaynow/qqpay/plugin/manager/route/impl/ReceivePayResult;


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/ipaynow/qqpay/plugin/manager/a/a;->an:Z

    iput-boolean v0, p0, Lcom/ipaynow/qqpay/plugin/manager/a/a;->ao:Z

    iput-boolean v0, p0, Lcom/ipaynow/qqpay/plugin/manager/a/a;->ap:Z

    iput-boolean v0, p0, Lcom/ipaynow/qqpay/plugin/manager/a/a;->aq:Z

    iput-boolean v0, p0, Lcom/ipaynow/qqpay/plugin/manager/a/a;->ar:Z

    iput-boolean v0, p0, Lcom/ipaynow/qqpay/plugin/manager/a/a;->as:Z

    iput-boolean v0, p0, Lcom/ipaynow/qqpay/plugin/manager/a/a;->at:Z

    iput-boolean v0, p0, Lcom/ipaynow/qqpay/plugin/manager/a/a;->au:Z

    iput-boolean v0, p0, Lcom/ipaynow/qqpay/plugin/manager/a/a;->av:Z

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/ipaynow/qqpay/plugin/manager/a/a;-><init>()V

    return-void
.end method

.method public static u()Lcom/ipaynow/qqpay/plugin/manager/a/a;
    .locals 1

    invoke-static {}, Lcom/ipaynow/qqpay/plugin/manager/a/b;->C()Lcom/ipaynow/qqpay/plugin/manager/a/a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final A()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ipaynow/qqpay/plugin/manager/a/a;->aq:Z

    return v0
.end method

.method public final B()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ipaynow/qqpay/plugin/manager/a/a;->ar:Z

    return v0
.end method

.method public final a(Landroid/app/Activity;)Lcom/ipaynow/qqpay/plugin/manager/a/a;
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/qqpay/plugin/manager/a/a;->aw:Landroid/app/Activity;

    return-object p0
.end method

.method public final a(Lcom/ipaynow/qqpay/plugin/manager/route/impl/ReceivePayResult;)Lcom/ipaynow/qqpay/plugin/manager/a/a;
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/qqpay/plugin/manager/a/a;->ay:Lcom/ipaynow/qqpay/plugin/manager/route/impl/ReceivePayResult;

    return-object p0
.end method

.method public final a(Z)Lcom/ipaynow/qqpay/plugin/manager/a/a;
    .locals 0

    iput-boolean p1, p0, Lcom/ipaynow/qqpay/plugin/manager/a/a;->av:Z

    return-object p0
.end method

.method public final b(Landroid/content/Context;)Lcom/ipaynow/qqpay/plugin/manager/a/a;
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/qqpay/plugin/manager/a/a;->ax:Landroid/content/Context;

    return-object p0
.end method

.method public final b(Z)Lcom/ipaynow/qqpay/plugin/manager/a/a;
    .locals 0

    iput-boolean p1, p0, Lcom/ipaynow/qqpay/plugin/manager/a/a;->an:Z

    return-object p0
.end method

.method public final c(Z)Lcom/ipaynow/qqpay/plugin/manager/a/a;
    .locals 0

    iput-boolean p1, p0, Lcom/ipaynow/qqpay/plugin/manager/a/a;->ao:Z

    return-object p0
.end method

.method public final d(Z)Lcom/ipaynow/qqpay/plugin/manager/a/a;
    .locals 0

    iput-boolean p1, p0, Lcom/ipaynow/qqpay/plugin/manager/a/a;->ap:Z

    return-object p0
.end method

.method public final e(Z)Lcom/ipaynow/qqpay/plugin/manager/a/a;
    .locals 0

    iput-boolean p1, p0, Lcom/ipaynow/qqpay/plugin/manager/a/a;->aq:Z

    return-object p0
.end method

.method public final f(Z)Lcom/ipaynow/qqpay/plugin/manager/a/a;
    .locals 0

    iput-boolean p1, p0, Lcom/ipaynow/qqpay/plugin/manager/a/a;->ar:Z

    return-object p0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/manager/a/a;->ax:Landroid/content/Context;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isMainThread="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/ipaynow/qqpay/plugin/manager/a/a;->an:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "isAddAllPermission="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/ipaynow/qqpay/plugin/manager/a/a;->ao:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "isInited="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/ipaynow/qqpay/plugin/manager/a/a;->aq:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "isLegalPayChannelType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/ipaynow/qqpay/plugin/manager/a/a;->ar:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "isPluginSupportPayChannelType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/ipaynow/qqpay/plugin/manager/a/a;->as:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "isWechatInstalled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/ipaynow/qqpay/plugin/manager/a/a;->au:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final v()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ipaynow/qqpay/plugin/manager/a/a;->av:Z

    return v0
.end method

.method public final w()Lcom/ipaynow/qqpay/plugin/manager/route/impl/ReceivePayResult;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/manager/a/a;->ay:Lcom/ipaynow/qqpay/plugin/manager/route/impl/ReceivePayResult;

    return-object v0
.end method

.method public final x()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/manager/a/a;->aw:Landroid/app/Activity;

    return-object v0
.end method

.method public final y()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ipaynow/qqpay/plugin/manager/a/a;->an:Z

    return v0
.end method

.method public final z()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ipaynow/qqpay/plugin/manager/a/a;->ao:Z

    return v0
.end method
