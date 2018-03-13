.class public Lcom/zqhy/sdk/model/c;
.super Ljava/lang/Object;
.source "SDKInfoBean.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:I

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:I

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/zqhy/sdk/model/c;
    .locals 3

    .prologue
    .line 90
    new-instance v0, Lcom/zqhy/sdk/model/c;

    invoke-direct {v0}, Lcom/zqhy/sdk/model/c;-><init>()V

    .line 92
    if-nez p0, :cond_0

    .line 124
    :goto_0
    return-object v0

    .line 96
    :cond_0
    const-string v1, "close_url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zqhy/sdk/model/c;->c(Ljava/lang/String;)V

    .line 97
    const-string v1, "gameid"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zqhy/sdk/model/c;->d(Ljava/lang/String;)V

    .line 98
    const-string v1, "gamename"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zqhy/sdk/model/c;->e(Ljava/lang/String;)V

    .line 99
    const-string v1, "login_url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zqhy/sdk/model/c;->f(Ljava/lang/String;)V

    .line 100
    const-string v1, "pay_url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zqhy/sdk/model/c;->g(Ljava/lang/String;)V

    .line 101
    const-string v1, "request_url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zqhy/sdk/model/c;->h(Ljava/lang/String;)V

    .line 102
    const-string v1, "buoy_url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zqhy/sdk/model/c;->i(Ljava/lang/String;)V

    .line 103
    const-string v1, "usercenter_url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zqhy/sdk/model/c;->t(Ljava/lang/String;)V

    .line 104
    const-string v1, "1"

    const-string v2, "is_show_buoy"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zqhy/sdk/model/c;->a(Z)V

    .line 106
    const-string v1, "buoy_icon_left"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zqhy/sdk/model/c;->j(Ljava/lang/String;)V

    .line 107
    const-string v1, "buoy_icon_remote"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zqhy/sdk/model/c;->a(I)V

    .line 108
    const-string v1, "buoy_icon_right"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zqhy/sdk/model/c;->k(Ljava/lang/String;)V

    .line 109
    const-string v1, "buoy_icon_top"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zqhy/sdk/model/c;->m(Ljava/lang/String;)V

    .line 110
    const-string v1, "buoy_icon_bottom"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zqhy/sdk/model/c;->n(Ljava/lang/String;)V

    .line 111
    const-string v1, "buoy_iocn"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zqhy/sdk/model/c;->l(Ljava/lang/String;)V

    .line 113
    const-string v1, "time"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zqhy/sdk/model/c;->o(Ljava/lang/String;)V

    .line 115
    const-string v1, "andsversion"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zqhy/sdk/model/c;->p(Ljava/lang/String;)V

    .line 116
    const-string v1, "andsvscode"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zqhy/sdk/model/c;->b(I)V

    .line 117
    const-string v1, "down_url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zqhy/sdk/model/c;->q(Ljava/lang/String;)V

    .line 119
    const-string v1, "is_show_banner"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zqhy/sdk/model/c;->r(Ljava/lang/String;)V

    .line 120
    const-string v1, "is_show_help"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zqhy/sdk/model/c;->s(Ljava/lang/String;)V

    .line 122
    const-string v1, "app_url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zqhy/sdk/model/c;->b(Ljava/lang/String;)V

    .line 123
    const-string v1, "andspackagename"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zqhy/sdk/model/c;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/zqhy/sdk/model/c;->w:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 214
    iput p1, p0, Lcom/zqhy/sdk/model/c;->k:I

    .line 215
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/zqhy/sdk/model/c;->w:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 190
    iput-boolean p1, p0, Lcom/zqhy/sdk/model/c;->i:Z

    .line 191
    return-void
.end method

.method public b()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/zqhy/sdk/model/c;->a()Ljava/lang/String;

    move-result-object v0

    .line 76
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 78
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 80
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    .line 81
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 86
    :cond_0
    return-object v1
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 270
    iput p1, p0, Lcom/zqhy/sdk/model/c;->r:I

    .line 271
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/zqhy/sdk/model/c;->v:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/zqhy/sdk/model/c;->v:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/zqhy/sdk/model/c;->a:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/zqhy/sdk/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zqhy/sdk/model/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/zqhy/sdk/model/c;->b:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/zqhy/sdk/model/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/zqhy/sdk/model/c;->c:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/zqhy/sdk/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zqhy/sdk/model/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/zqhy/sdk/model/c;->d:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/zqhy/sdk/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zqhy/sdk/model/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/zqhy/sdk/model/c;->e:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/zqhy/sdk/model/c;->f:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/zqhy/sdk/model/c;->f:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/zqhy/sdk/model/c;->g:Ljava/lang/String;

    .line 199
    return-void
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/zqhy/sdk/model/c;->i:Z

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/zqhy/sdk/model/c;->g:Ljava/lang/String;

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/zqhy/sdk/model/c;->j:Ljava/lang/String;

    .line 207
    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/zqhy/sdk/model/c;->j:Ljava/lang/String;

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/zqhy/sdk/model/c;->l:Ljava/lang/String;

    .line 223
    return-void
.end method

.method public l()I
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lcom/zqhy/sdk/model/c;->k:I

    return v0
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/zqhy/sdk/model/c;->o:Ljava/lang/String;

    .line 231
    return-void
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/zqhy/sdk/model/c;->l:Ljava/lang/String;

    return-object v0
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/zqhy/sdk/model/c;->m:Ljava/lang/String;

    .line 239
    return-void
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/zqhy/sdk/model/c;->o:Ljava/lang/String;

    return-object v0
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/zqhy/sdk/model/c;->n:Ljava/lang/String;

    .line 247
    return-void
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/zqhy/sdk/model/c;->m:Ljava/lang/String;

    return-object v0
.end method

.method public o(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/zqhy/sdk/model/c;->p:Ljava/lang/String;

    .line 255
    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/zqhy/sdk/model/c;->n:Ljava/lang/String;

    return-object v0
.end method

.method public p(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcom/zqhy/sdk/model/c;->q:Ljava/lang/String;

    .line 263
    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/zqhy/sdk/model/c;->p:Ljava/lang/String;

    return-object v0
.end method

.method public q(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Lcom/zqhy/sdk/model/c;->s:Ljava/lang/String;

    .line 279
    return-void
.end method

.method public r()I
    .locals 1

    .prologue
    .line 266
    iget v0, p0, Lcom/zqhy/sdk/model/c;->r:I

    return v0
.end method

.method public r(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 286
    iput-object p1, p0, Lcom/zqhy/sdk/model/c;->t:Ljava/lang/String;

    .line 287
    return-void
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/zqhy/sdk/model/c;->s:Ljava/lang/String;

    return-object v0
.end method

.method public s(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lcom/zqhy/sdk/model/c;->u:Ljava/lang/String;

    .line 295
    return-void
.end method

.method public t()Ljava/lang/String;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/zqhy/sdk/model/c;->t:Ljava/lang/String;

    return-object v0
.end method

.method public t(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Lcom/zqhy/sdk/model/c;->h:Ljava/lang/String;

    .line 303
    return-void
.end method

.method public u()Ljava/lang/String;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/zqhy/sdk/model/c;->u:Ljava/lang/String;

    return-object v0
.end method
