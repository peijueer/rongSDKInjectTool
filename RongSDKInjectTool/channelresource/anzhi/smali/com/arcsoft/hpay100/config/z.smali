.class Lcom/arcsoft/hpay100/config/z;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/arcsoft/hpay100/config/ar;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/arcsoft/hpay100/config/HPaySMS;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/arcsoft/hpay100/config/z;->b:Lcom/arcsoft/hpay100/config/HPaySMS;

    iput-object p1, p0, Lcom/arcsoft/hpay100/config/z;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/arcsoft/hpay100/config/z;->b:Lcom/arcsoft/hpay100/config/HPaySMS;

    return-void
.end method


# virtual methods
.method public chanage()V
    .locals 4

    const-string v0, ""

    iget-object v1, p0, Lcom/arcsoft/hpay100/config/z;->b:Lcom/arcsoft/hpay100/config/HPaySMS;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/arcsoft/hpay100/config/z;->b:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v0, v0, Lcom/arcsoft/hpay100/config/HPaySMS;->mYzmRegx:Ljava/lang/String;

    :cond_0
    const-string v1, "dalongTest"

    const-string v2, "submit chanage"

    invoke-static {v1, v2}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/arcsoft/hpay100/config/z;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/arcsoft/hpay100/utils/HPaySMSUtils;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dalongTest"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "yzmtmp---:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/arcsoft/hpay100/config/w;->a(Ljava/lang/String;)V

    :cond_1
    const-string v0, "dalongTest"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mYzm---:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/arcsoft/hpay100/config/w;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/arcsoft/hpay100/config/w;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/arcsoft/hpay100/config/w;->b()V

    const-string v0, "dalongTest"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "chanage mIsWaitYzm:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/arcsoft/hpay100/config/w;->c()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/arcsoft/hpay100/config/w;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/arcsoft/hpay100/config/aa;

    invoke-direct {v0, p0}, Lcom/arcsoft/hpay100/config/aa;-><init>(Lcom/arcsoft/hpay100/config/z;)V

    invoke-static {v0}, Lcom/arcsoft/hpay100/config/w;->a(Ljava/lang/Runnable;)V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/arcsoft/hpay100/config/z;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {v0}, Lcom/arcsoft/hpay100/config/w;->a(Landroid/os/Handler;)V

    invoke-static {}, Lcom/arcsoft/hpay100/config/w;->g()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/arcsoft/hpay100/config/w;->h()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/arcsoft/hpay100/config/w;->a(Z)V

    :cond_2
    return-void
.end method
