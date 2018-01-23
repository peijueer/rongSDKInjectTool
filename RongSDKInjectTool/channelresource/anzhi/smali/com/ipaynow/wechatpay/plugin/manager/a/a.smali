.class public final Lcom/ipaynow/wechatpay/plugin/manager/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private aO:Z

.field private aP:Z

.field private aQ:Z

.field private aR:Z

.field private aS:Z

.field private aT:Z

.field private aU:Z

.field private aV:Z

.field private aW:Z

.field private aX:Z

.field private aY:Lcom/ipaynow/wechatpay/plugin/view/f;

.field private aZ:Landroid/app/Activity;

.field private b:Lcom/ipaynow/wechatpay/plugin/manager/route/dto/RequestParams;

.field private ba:Ljava/lang/String;

.field private bb:Landroid/app/Activity;

.field private bc:Landroid/content/Context;

.field private bd:Lcom/ipaynow/wechatpay/plugin/manager/route/impl/ReceivePayResult;

.field private be:Lcom/ipaynow/wechatpay/plugin/view/IpaynowLoading;

.field private mhtOrderNo:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean v0, p0, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->aO:Z

    .line 26
    iput-boolean v0, p0, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->aP:Z

    .line 27
    iput-boolean v0, p0, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->aQ:Z

    .line 28
    iput-boolean v0, p0, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->aR:Z

    .line 29
    iput-boolean v0, p0, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->aS:Z

    .line 30
    iput-boolean v0, p0, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->aT:Z

    .line 31
    iput-boolean v0, p0, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->aU:Z

    .line 32
    iput-boolean v0, p0, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->aV:Z

    .line 33
    iput-boolean v0, p0, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->aW:Z

    .line 34
    iput-boolean v0, p0, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->aX:Z

    .line 19
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;-><init>()V

    return-void
.end method

.method public static r()Lcom/ipaynow/wechatpay/plugin/manager/a/a;
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Lcom/ipaynow/wechatpay/plugin/manager/a/b;->H()Lcom/ipaynow/wechatpay/plugin/manager/a/a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final A()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->bb:Landroid/app/Activity;

    return-object v0
.end method

.method public final B()Z
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->aV:Z

    return v0
.end method

.method public final C()Z
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->aO:Z

    return v0
.end method

.method public final D()Z
    .locals 1

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->aQ:Z

    return v0
.end method

.method public final E()Z
    .locals 1

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->aR:Z

    return v0
.end method

.method public final F()Z
    .locals 1

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->aS:Z

    return v0
.end method

.method public final G()Lcom/ipaynow/wechatpay/plugin/manager/a/a;
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->aT:Z

    .line 195
    return-object p0
.end method

.method public final a(Lcom/ipaynow/wechatpay/plugin/manager/route/impl/ReceivePayResult;)Lcom/ipaynow/wechatpay/plugin/manager/a/a;
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->bd:Lcom/ipaynow/wechatpay/plugin/manager/route/impl/ReceivePayResult;

    .line 123
    return-object p0
.end method

.method public final a(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->aZ:Landroid/app/Activity;

    .line 90
    return-void
.end method

.method public final a(Lcom/ipaynow/wechatpay/plugin/view/f;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->aY:Lcom/ipaynow/wechatpay/plugin/view/f;

    .line 66
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->aX:Z

    .line 58
    return-void
.end method

.method public final b(Landroid/app/Activity;)Lcom/ipaynow/wechatpay/plugin/manager/a/a;
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->bb:Landroid/app/Activity;

    .line 141
    return-object p0
.end method

.method public final b(Lcom/ipaynow/wechatpay/plugin/view/IpaynowLoading;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->be:Lcom/ipaynow/wechatpay/plugin/view/IpaynowLoading;

    .line 98
    return-void
.end method

.method public final b(Z)V
    .locals 0

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->aP:Z

    .line 110
    return-void
.end method

.method public final c(Z)Lcom/ipaynow/wechatpay/plugin/manager/a/a;
    .locals 0

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->aW:Z

    .line 114
    return-object p0
.end method

.method public final clearAll()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 211
    iput-boolean v0, p0, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->aO:Z

    .line 212
    iput-boolean v0, p0, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->aQ:Z

    .line 213
    iput-boolean v0, p0, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->aR:Z

    .line 214
    iput-boolean v0, p0, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->aT:Z

    .line 215
    iput-boolean v0, p0, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->aU:Z

    .line 216
    iput-boolean v0, p0, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->aV:Z

    .line 217
    iput-object v1, p0, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->aZ:Landroid/app/Activity;

    .line 218
    iput-object v1, p0, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->b:Lcom/ipaynow/wechatpay/plugin/manager/route/dto/RequestParams;

    .line 219
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->be:Lcom/ipaynow/wechatpay/plugin/view/IpaynowLoading;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->be:Lcom/ipaynow/wechatpay/plugin/view/IpaynowLoading;

    invoke-interface {v0}, Lcom/ipaynow/wechatpay/plugin/view/IpaynowLoading;->dismiss()V

    .line 222
    :cond_0
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 223
    return-void
.end method

.method public final d(Landroid/content/Context;)Lcom/ipaynow/wechatpay/plugin/manager/a/a;
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->bc:Landroid/content/Context;

    .line 132
    return-object p0
.end method

.method public final d(Z)Lcom/ipaynow/wechatpay/plugin/manager/a/a;
    .locals 0

    .prologue
    .line 149
    iput-boolean p1, p0, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->aV:Z

    .line 150
    return-object p0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->mhtOrderNo:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public final e(Z)Lcom/ipaynow/wechatpay/plugin/manager/a/a;
    .locals 0

    .prologue
    .line 158
    iput-boolean p1, p0, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->aO:Z

    .line 159
    return-object p0
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->ba:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public final f(Z)Lcom/ipaynow/wechatpay/plugin/manager/a/a;
    .locals 0

    .prologue
    .line 167
    iput-boolean p1, p0, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->aQ:Z

    .line 168
    return-object p0
.end method

.method public final g(Z)Lcom/ipaynow/wechatpay/plugin/manager/a/a;
    .locals 0

    .prologue
    .line 176
    iput-boolean p1, p0, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->aR:Z

    .line 177
    return-object p0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->bc:Landroid/content/Context;

    return-object v0
.end method

.method public final h(Z)Lcom/ipaynow/wechatpay/plugin/manager/a/a;
    .locals 0

    .prologue
    .line 185
    iput-boolean p1, p0, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->aS:Z

    .line 186
    return-object p0
.end method

.method public final onActivityDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 226
    iput-object v1, p0, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->bb:Landroid/app/Activity;

    .line 227
    iput-object v1, p0, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->bc:Landroid/content/Context;

    .line 228
    iput-object v1, p0, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->be:Lcom/ipaynow/wechatpay/plugin/view/IpaynowLoading;

    .line 229
    iput-object v1, p0, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->aZ:Landroid/app/Activity;

    .line 230
    iput-object v1, p0, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->ba:Ljava/lang/String;

    .line 231
    iput-object v1, p0, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->mhtOrderNo:Ljava/lang/String;

    .line 233
    iput-object v1, p0, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->b:Lcom/ipaynow/wechatpay/plugin/manager/route/dto/RequestParams;

    .line 234
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->aY:Lcom/ipaynow/wechatpay/plugin/view/f;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->aY:Lcom/ipaynow/wechatpay/plugin/view/f;

    invoke-virtual {v0}, Lcom/ipaynow/wechatpay/plugin/view/f;->onDestroy()V

    .line 236
    :cond_0
    iput-object v1, p0, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->aY:Lcom/ipaynow/wechatpay/plugin/view/f;

    .line 237
    invoke-static {}, Lcom/ipaynow/wechatpay/plugin/manager/c/a;->K()Lcom/ipaynow/wechatpay/plugin/manager/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/wechatpay/plugin/manager/c/a;->clear()V

    .line 238
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 239
    return-void
.end method

.method public final s()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->aX:Z

    return v0
.end method

.method public final t()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->mhtOrderNo:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    const-string v1, "isMainThread="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->aO:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 245
    const-string v1, "isAddAllPermission="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->aQ:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 246
    const-string v1, "isInited="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->aS:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 247
    const-string v1, "isLegalPayChannelType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->aT:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 248
    const-string v1, "isPluginSupportPayChannelType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->aU:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 249
    const-string v1, "isWechatInstalled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->aV:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 250
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->ba:Ljava/lang/String;

    return-object v0
.end method

.method public final v()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->aZ:Landroid/app/Activity;

    return-object v0
.end method

.method public final w()Lcom/ipaynow/wechatpay/plugin/view/IpaynowLoading;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->be:Lcom/ipaynow/wechatpay/plugin/view/IpaynowLoading;

    return-object v0
.end method

.method public final x()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->aW:Z

    return v0
.end method

.method public final y()Z
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->aP:Z

    return v0
.end method

.method public final z()Lcom/ipaynow/wechatpay/plugin/manager/route/impl/ReceivePayResult;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->bd:Lcom/ipaynow/wechatpay/plugin/manager/route/impl/ReceivePayResult;

    return-object v0
.end method
