.class public Lcom/zqhy/sdk/model/d;
.super Ljava/lang/Object;
.source "SDKModle.java"


# static fields
.field private static volatile c:Lcom/zqhy/sdk/model/d;

.field private static f:Z


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field private volatile d:Lcom/zqhy/sdk/model/c;

.field private volatile e:Lcom/zqhy/sdk/model/e;

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-boolean v0, Lcom/zqhy/sdk/model/d;->f:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static a()Lcom/zqhy/sdk/model/d;
    .locals 2

    .prologue
    .line 21
    sget-object v0, Lcom/zqhy/sdk/model/d;->c:Lcom/zqhy/sdk/model/d;

    if-nez v0, :cond_1

    .line 22
    const-class v1, Lcom/zqhy/sdk/model/d;

    monitor-enter v1

    .line 23
    :try_start_0
    sget-object v0, Lcom/zqhy/sdk/model/d;->c:Lcom/zqhy/sdk/model/d;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/zqhy/sdk/model/d;

    invoke-direct {v0}, Lcom/zqhy/sdk/model/d;-><init>()V

    sput-object v0, Lcom/zqhy/sdk/model/d;->c:Lcom/zqhy/sdk/model/d;

    .line 26
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :cond_1
    sget-object v0, Lcom/zqhy/sdk/model/d;->c:Lcom/zqhy/sdk/model/d;

    return-object v0

    .line 26
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Z)V
    .locals 0

    .prologue
    .line 52
    sput-boolean p1, Lcom/zqhy/sdk/model/d;->f:Z

    .line 53
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 123
    iput p1, p0, Lcom/zqhy/sdk/model/d;->g:I

    .line 124
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 39
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 40
    const-string v1, "state"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 41
    if-ne v1, v2, :cond_0

    .line 42
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/zqhy/sdk/model/d;->a(Z)V

    .line 43
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 44
    invoke-static {v0}, Lcom/zqhy/sdk/model/c;->a(Lorg/json/JSONObject;)Lcom/zqhy/sdk/model/c;

    move-result-object v0

    iput-object v0, p0, Lcom/zqhy/sdk/model/d;->d:Lcom/zqhy/sdk/model/c;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 46
    :catch_0
    move-exception v0

    .line 47
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public declared-synchronized b()Lcom/zqhy/sdk/model/c;
    .locals 1

    .prologue
    .line 32
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zqhy/sdk/model/d;->d:Lcom/zqhy/sdk/model/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 61
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 62
    const-string v1, "state"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 63
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 64
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 65
    invoke-static {v0}, Lcom/zqhy/sdk/model/e;->a(Lorg/json/JSONObject;)Lcom/zqhy/sdk/model/e;

    move-result-object v0

    iput-object v0, p0, Lcom/zqhy/sdk/model/d;->e:Lcom/zqhy/sdk/model/e;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 68
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/zqhy/sdk/model/d;->h:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 56
    sget-boolean v0, Lcom/zqhy/sdk/model/d;->f:Z

    return v0
.end method

.method public d()Lcom/zqhy/sdk/model/e;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/zqhy/sdk/model/d;->e:Lcom/zqhy/sdk/model/e;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/zqhy/sdk/model/d;->a:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/zqhy/sdk/model/d;->h:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/zqhy/sdk/model/d;->b:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/zqhy/sdk/model/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/zqhy/sdk/model/d;->i:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/zqhy/sdk/model/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public h()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 117
    const/4 v0, 0x0

    sput-boolean v0, Lcom/zqhy/sdk/model/d;->f:Z

    .line 118
    iput-object v1, p0, Lcom/zqhy/sdk/model/d;->d:Lcom/zqhy/sdk/model/c;

    .line 119
    iput-object v1, p0, Lcom/zqhy/sdk/model/d;->e:Lcom/zqhy/sdk/model/e;

    .line 120
    return-void
.end method

.method public i()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/zqhy/sdk/model/d;->g:I

    return v0
.end method
