.class Lcom/arcsoft/hpay100/config/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/app/Activity;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:I

.field private final synthetic e:Ljava/lang/String;

.field private final synthetic f:Ljava/lang/String;

.field private final synthetic g:I

.field private final synthetic h:Lcom/arcsoft/hpay100/config/b;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/arcsoft/hpay100/config/b;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/hpay100/config/e;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/arcsoft/hpay100/config/e;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/arcsoft/hpay100/config/e;->c:Ljava/lang/String;

    iput p4, p0, Lcom/arcsoft/hpay100/config/e;->d:I

    iput-object p5, p0, Lcom/arcsoft/hpay100/config/e;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/arcsoft/hpay100/config/e;->f:Ljava/lang/String;

    iput p7, p0, Lcom/arcsoft/hpay100/config/e;->g:I

    iput-object p8, p0, Lcom/arcsoft/hpay100/config/e;->h:Lcom/arcsoft/hpay100/config/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    :try_start_0
    const-string v0, ""

    sput-object v0, Lcom/arcsoft/hpay100/config/c;->y:Ljava/lang/String;

    const-string v6, "http://fee.arc-soft.com:26000/gamefee/sdk/before_create_order"

    iget-object v0, p0, Lcom/arcsoft/hpay100/config/e;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/arcsoft/hpay100/utils/s;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/config/e;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/arcsoft/hpay100/config/e;->c:Ljava/lang/String;

    iget v2, p0, Lcom/arcsoft/hpay100/config/e;->d:I

    iget-object v3, p0, Lcom/arcsoft/hpay100/config/e;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/arcsoft/hpay100/config/e;->f:Ljava/lang/String;

    iget v5, p0, Lcom/arcsoft/hpay100/config/e;->g:I

    invoke-static/range {v0 .. v5}, Lcom/arcsoft/hpay100/config/c;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dalongTest"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "data:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "dbbsRYnaQPKia/sCWJGRNAsQH7PLIw3a"

    invoke-static {v0, v2}, Lcom/arcsoft/hpay100/utils/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "p"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/arcsoft/hpay100/config/e;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v6, v1}, Lcom/arcsoft/hpay100/net/c;->b(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/arcsoft/hpay100/config/c;->y:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/arcsoft/hpay100/config/e;->a:Landroid/app/Activity;

    new-instance v1, Lcom/arcsoft/hpay100/config/f;

    iget-object v2, p0, Lcom/arcsoft/hpay100/config/e;->h:Lcom/arcsoft/hpay100/config/b;

    invoke-direct {v1, p0, v2}, Lcom/arcsoft/hpay100/config/f;-><init>(Lcom/arcsoft/hpay100/config/e;Lcom/arcsoft/hpay100/config/b;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    sput-object v0, Lcom/arcsoft/hpay100/config/c;->y:Ljava/lang/String;

    goto :goto_0
.end method
