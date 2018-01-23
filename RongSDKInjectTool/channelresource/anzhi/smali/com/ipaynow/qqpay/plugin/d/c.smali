.class public final Lcom/ipaynow/qqpay/plugin/d/c;
.super Lcom/ipaynow/qqpay/plugin/d/b;


# instance fields
.field private U:Lcom/ipaynow/qqpay/plugin/ipview/a/a;

.field private appId:Ljava/lang/String;

.field private mhtOrderNo:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ipaynow/qqpay/plugin/ipview/a/a;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ipaynow/qqpay/plugin/d/b;-><init>(Landroid/app/ProgressDialog;)V

    iput-object p1, p0, Lcom/ipaynow/qqpay/plugin/d/c;->U:Lcom/ipaynow/qqpay/plugin/ipview/a/a;

    return-void
.end method


# virtual methods
.method public final b(Lcom/ipaynow/qqpay/plugin/c/a/c/a/a;)V
    .locals 3

    invoke-static {p1}, Lcom/ipaynow/a/a/b;->a(Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/ipaynow/qqpay/plugin/c/a/c/a/a;->R:Ljava/lang/String;

    const-string v1, "01"

    invoke-static {v0, v1}, Lcom/ipaynow/qqpay/plugin/utils/e;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ipaynow/qqpay/plugin/d/c;->U:Lcom/ipaynow/qqpay/plugin/ipview/a/a;

    invoke-interface {v1}, Lcom/ipaynow/qqpay/plugin/ipview/a/a;->l()V

    :cond_0
    const-string v1, "02"

    invoke-static {v0, v1}, Lcom/ipaynow/qqpay/plugin/utils/e;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/d/c;->U:Lcom/ipaynow/qqpay/plugin/ipview/a/a;

    iget-object v1, p1, Lcom/ipaynow/qqpay/plugin/c/a/c/a/a;->errorCode:Ljava/lang/String;

    iget-object v2, p1, Lcom/ipaynow/qqpay/plugin/c/a/c/a/a;->respMsg:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/ipaynow/qqpay/plugin/ipview/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p1, Lcom/ipaynow/qqpay/plugin/c/a/c/a/a;->respCode:Ljava/lang/String;

    const-string v1, "A001"

    invoke-static {v0, v1}, Lcom/ipaynow/qqpay/plugin/utils/e;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/d/c;->U:Lcom/ipaynow/qqpay/plugin/ipview/a/a;

    invoke-interface {v0}, Lcom/ipaynow/qqpay/plugin/ipview/a/a;->m()V

    goto :goto_0

    :cond_3
    const-string v1, "A003"

    invoke-static {v0, v1}, Lcom/ipaynow/qqpay/plugin/utils/e;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "A004"

    invoke-static {v0, v1}, Lcom/ipaynow/qqpay/plugin/utils/e;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_4
    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/d/c;->U:Lcom/ipaynow/qqpay/plugin/ipview/a/a;

    invoke-interface {v0}, Lcom/ipaynow/qqpay/plugin/ipview/a/a;->n()V

    goto :goto_0
.end method

.method public final f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/qqpay/plugin/d/c;->appId:Ljava/lang/String;

    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/qqpay/plugin/d/c;->mhtOrderNo:Ljava/lang/String;

    return-void
.end method

.method public final onPause()V
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/d/c;->U:Lcom/ipaynow/qqpay/plugin/ipview/a/a;

    invoke-interface {v0}, Lcom/ipaynow/qqpay/plugin/ipview/a/a;->k()V

    return-void
.end method

.method public final onResume()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/d/c;->U:Lcom/ipaynow/qqpay/plugin/ipview/a/a;

    invoke-interface {v0}, Lcom/ipaynow/qqpay/plugin/ipview/a/a;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/d/c;->U:Lcom/ipaynow/qqpay/plugin/ipview/a/a;

    invoke-interface {v0}, Lcom/ipaynow/qqpay/plugin/ipview/a/a;->p()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/d/c;->U:Lcom/ipaynow/qqpay/plugin/ipview/a/a;

    iget-object v1, p0, Lcom/ipaynow/qqpay/plugin/d/c;->U:Lcom/ipaynow/qqpay/plugin/ipview/a/a;

    invoke-interface {v1}, Lcom/ipaynow/qqpay/plugin/ipview/a/a;->q()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Lcom/ipaynow/qqpay/plugin/ipview/a/a;->b(I)V

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/d/c;->U:Lcom/ipaynow/qqpay/plugin/ipview/a/a;

    invoke-interface {v0}, Lcom/ipaynow/qqpay/plugin/ipview/a/a;->q()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/d/c;->U:Lcom/ipaynow/qqpay/plugin/ipview/a/a;

    const-string v1, "\u6b63\u5728\u9000\u51faQQ\u652f\u4ed8"

    invoke-interface {v0, v1}, Lcom/ipaynow/qqpay/plugin/ipview/a/a;->h(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/d/c;->U:Lcom/ipaynow/qqpay/plugin/ipview/a/a;

    invoke-interface {v0}, Lcom/ipaynow/qqpay/plugin/ipview/a/a;->j()V

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/d/c;->appId:Ljava/lang/String;

    iget-object v1, p0, Lcom/ipaynow/qqpay/plugin/d/c;->mhtOrderNo:Ljava/lang/String;

    iget-object v2, p0, Lcom/ipaynow/qqpay/plugin/d/c;->T:Lcom/ipaynow/qqpay/plugin/c/a;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "funcode"

    const-string v5, "MQ001"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "appId"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "mhtOrderNo"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "mhtCharset"

    const-string v1, "UTF-8"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "mhtSignature"

    invoke-static {v3, v7, v6}, Lcom/ipaynow/qqpay/plugin/utils/PluginTools;->a(Ljava/util/Map;ZZ)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "&"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Lcom/ipaynow/qqpay/plugin/b/d;->z:Ljava/lang/String;

    invoke-static {v4}, Lcom/ipaynow/qqpay/plugin/c/a/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ipaynow/qqpay/plugin/c/a/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "mhtSignType"

    const-string v1, "MD5"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3, v6, v7}, Lcom/ipaynow/qqpay/plugin/utils/PluginTools;->a(Ljava/util/Map;ZZ)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/ipaynow/qqpay/plugin/c/a/c/b;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/ipaynow/qqpay/plugin/c/a/c/b;-><init>(Lcom/ipaynow/qqpay/plugin/c/b/a;ILandroid/app/ProgressDialog;)V

    new-array v2, v7, [Ljava/lang/String;

    aput-object v0, v2, v6

    invoke-virtual {v1, v2}, Lcom/ipaynow/qqpay/plugin/c/a/c/b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/d/c;->U:Lcom/ipaynow/qqpay/plugin/ipview/a/a;

    invoke-interface {v0}, Lcom/ipaynow/qqpay/plugin/ipview/a/a;->r()V

    goto/16 :goto_0
.end method

.method public final onStop()V
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/d/c;->U:Lcom/ipaynow/qqpay/plugin/ipview/a/a;

    invoke-interface {v0}, Lcom/ipaynow/qqpay/plugin/ipview/a/a;->s()V

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/d/c;->U:Lcom/ipaynow/qqpay/plugin/ipview/a/a;

    invoke-interface {v0}, Lcom/ipaynow/qqpay/plugin/ipview/a/a;->k()V

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/d/c;->U:Lcom/ipaynow/qqpay/plugin/ipview/a/a;

    invoke-interface {v0}, Lcom/ipaynow/qqpay/plugin/ipview/a/a;->t()Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    :cond_0
    return-void
.end method
