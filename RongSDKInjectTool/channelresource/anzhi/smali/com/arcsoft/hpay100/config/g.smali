.class Lcom/arcsoft/hpay100/config/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/app/Activity;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:I

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:I

.field private final synthetic f:Ljava/lang/String;

.field private final synthetic g:Ljava/lang/String;

.field private final synthetic h:I

.field private final synthetic i:Lcom/arcsoft/hpay100/config/b;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/arcsoft/hpay100/config/b;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/hpay100/config/g;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/arcsoft/hpay100/config/g;->b:Ljava/lang/String;

    iput p3, p0, Lcom/arcsoft/hpay100/config/g;->c:I

    iput-object p4, p0, Lcom/arcsoft/hpay100/config/g;->d:Ljava/lang/String;

    iput p5, p0, Lcom/arcsoft/hpay100/config/g;->e:I

    iput-object p6, p0, Lcom/arcsoft/hpay100/config/g;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/arcsoft/hpay100/config/g;->g:Ljava/lang/String;

    iput p8, p0, Lcom/arcsoft/hpay100/config/g;->h:I

    iput-object p9, p0, Lcom/arcsoft/hpay100/config/g;->i:Lcom/arcsoft/hpay100/config/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const-string v0, ""

    sput-object v0, Lcom/arcsoft/hpay100/config/c;->z:Ljava/lang/String;

    :try_start_0
    const-string v7, "http://fee.arc-soft.com:26000/gamefee/sdk/create_order"

    iget-object v0, p0, Lcom/arcsoft/hpay100/config/g;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/arcsoft/hpay100/utils/s;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/config/g;->b:Ljava/lang/String;

    iget v1, p0, Lcom/arcsoft/hpay100/config/g;->c:I

    iget-object v2, p0, Lcom/arcsoft/hpay100/config/g;->d:Ljava/lang/String;

    iget v3, p0, Lcom/arcsoft/hpay100/config/g;->e:I

    iget-object v4, p0, Lcom/arcsoft/hpay100/config/g;->f:Ljava/lang/String;

    iget-object v5, p0, Lcom/arcsoft/hpay100/config/g;->g:Ljava/lang/String;

    iget v6, p0, Lcom/arcsoft/hpay100/config/g;->h:I

    invoke-static/range {v0 .. v6}, Lcom/arcsoft/hpay100/config/c;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dalongTest"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "params:"

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

    iget-object v0, p0, Lcom/arcsoft/hpay100/config/g;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v7, v1}, Lcom/arcsoft/hpay100/net/c;->b(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/arcsoft/hpay100/config/c;->z:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/arcsoft/hpay100/config/g;->a:Landroid/app/Activity;

    new-instance v1, Lcom/arcsoft/hpay100/config/h;

    iget-object v2, p0, Lcom/arcsoft/hpay100/config/g;->i:Lcom/arcsoft/hpay100/config/b;

    invoke-direct {v1, p0, v2}, Lcom/arcsoft/hpay100/config/h;-><init>(Lcom/arcsoft/hpay100/config/g;Lcom/arcsoft/hpay100/config/b;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    sput-object v0, Lcom/arcsoft/hpay100/config/c;->z:Ljava/lang/String;

    goto :goto_0
.end method
