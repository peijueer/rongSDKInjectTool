.class public Lcom/ipaynow/wechatpay/plugin/view/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static synthetic cH:[I


# instance fields
.field private cA:Landroid/widget/TextView;

.field private cB:Landroid/widget/TextView;

.field private cC:I

.field private cD:Ljava/lang/String;

.field private cE:Ljava/lang/String;

.field private cF:I

.field private cG:Z

.field private ci:F

.field private ct:Lcom/ipaynow/wechatpay/plugin/view/b;

.field private cu:Landroid/widget/LinearLayout;

.field private cv:Landroid/widget/FrameLayout;

.field private cw:Lcom/ipaynow/wechatpay/plugin/view/l;

.field private cx:F

.field private cy:I

.field private cz:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/ipaynow/wechatpay/plugin/view/k;->mContext:Landroid/content/Context;

    .line 57
    new-instance v0, Lcom/ipaynow/wechatpay/plugin/view/l;

    invoke-direct {v0, p0, p1}, Lcom/ipaynow/wechatpay/plugin/view/l;-><init>(Lcom/ipaynow/wechatpay/plugin/view/k;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/k;->cw:Lcom/ipaynow/wechatpay/plugin/view/l;

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/ipaynow/wechatpay/plugin/view/k;->cx:F

    .line 60
    const-string v0, "#b1000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ipaynow/wechatpay/plugin/view/k;->cy:I

    .line 61
    iput v1, p0, Lcom/ipaynow/wechatpay/plugin/view/k;->cC:I

    .line 62
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/ipaynow/wechatpay/plugin/view/k;->ci:F

    .line 63
    iput-boolean v1, p0, Lcom/ipaynow/wechatpay/plugin/view/k;->cG:Z

    .line 65
    sget-object v0, Lcom/ipaynow/wechatpay/plugin/view/m;->cM:Lcom/ipaynow/wechatpay/plugin/view/m;

    invoke-virtual {p0, v0}, Lcom/ipaynow/wechatpay/plugin/view/k;->a(Lcom/ipaynow/wechatpay/plugin/view/m;)Lcom/ipaynow/wechatpay/plugin/view/k;

    .line 66
    return-void
.end method

.method static synthetic a(Lcom/ipaynow/wechatpay/plugin/view/k;)F
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/ipaynow/wechatpay/plugin/view/k;->cx:F

    return v0
.end method

.method static synthetic a(Lcom/ipaynow/wechatpay/plugin/view/k;Landroid/widget/FrameLayout;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/ipaynow/wechatpay/plugin/view/k;->cv:Landroid/widget/FrameLayout;

    return-void
.end method

.method static synthetic a(Lcom/ipaynow/wechatpay/plugin/view/k;Landroid/widget/LinearLayout;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/ipaynow/wechatpay/plugin/view/k;->cu:Landroid/widget/LinearLayout;

    return-void
.end method

.method static synthetic a(Lcom/ipaynow/wechatpay/plugin/view/k;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/ipaynow/wechatpay/plugin/view/k;->cA:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic a(Lcom/ipaynow/wechatpay/plugin/view/k;Lcom/ipaynow/wechatpay/plugin/view/b;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/ipaynow/wechatpay/plugin/view/k;->ct:Lcom/ipaynow/wechatpay/plugin/view/b;

    return-void
.end method

.method private static synthetic ai()[I
    .locals 3

    .prologue
    .line 33
    sget-object v0, Lcom/ipaynow/wechatpay/plugin/view/k;->cH:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/ipaynow/wechatpay/plugin/view/m;->values()[Lcom/ipaynow/wechatpay/plugin/view/m;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/ipaynow/wechatpay/plugin/view/m;->cO:Lcom/ipaynow/wechatpay/plugin/view/m;

    invoke-virtual {v1}, Lcom/ipaynow/wechatpay/plugin/view/m;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/ipaynow/wechatpay/plugin/view/m;->cP:Lcom/ipaynow/wechatpay/plugin/view/m;

    invoke-virtual {v1}, Lcom/ipaynow/wechatpay/plugin/view/m;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/ipaynow/wechatpay/plugin/view/m;->cN:Lcom/ipaynow/wechatpay/plugin/view/m;

    invoke-virtual {v1}, Lcom/ipaynow/wechatpay/plugin/view/m;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/ipaynow/wechatpay/plugin/view/m;->cM:Lcom/ipaynow/wechatpay/plugin/view/m;

    invoke-virtual {v1}, Lcom/ipaynow/wechatpay/plugin/view/m;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/ipaynow/wechatpay/plugin/view/k;->cH:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method static synthetic b(Lcom/ipaynow/wechatpay/plugin/view/k;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/ipaynow/wechatpay/plugin/view/k;->cB:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic b(Lcom/ipaynow/wechatpay/plugin/view/k;)Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/ipaynow/wechatpay/plugin/view/k;->cz:Z

    return v0
.end method

.method static synthetic c(Lcom/ipaynow/wechatpay/plugin/view/k;)Lcom/ipaynow/wechatpay/plugin/view/b;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/k;->ct:Lcom/ipaynow/wechatpay/plugin/view/b;

    return-object v0
.end method

.method static synthetic d(Lcom/ipaynow/wechatpay/plugin/view/k;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/k;->cu:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic e(Lcom/ipaynow/wechatpay/plugin/view/k;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/k;->cv:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic f(Lcom/ipaynow/wechatpay/plugin/view/k;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/k;->cA:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic g(Lcom/ipaynow/wechatpay/plugin/view/k;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/k;->cB:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic h(Lcom/ipaynow/wechatpay/plugin/view/k;)I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/ipaynow/wechatpay/plugin/view/k;->cy:I

    return v0
.end method

.method static synthetic i(Lcom/ipaynow/wechatpay/plugin/view/k;)F
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/ipaynow/wechatpay/plugin/view/k;->ci:F

    return v0
.end method

.method static synthetic j(Lcom/ipaynow/wechatpay/plugin/view/k;)I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/ipaynow/wechatpay/plugin/view/k;->cF:I

    return v0
.end method

.method static synthetic k(Lcom/ipaynow/wechatpay/plugin/view/k;)I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/ipaynow/wechatpay/plugin/view/k;->cC:I

    return v0
.end method

.method static synthetic l(Lcom/ipaynow/wechatpay/plugin/view/k;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/k;->cD:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic m(Lcom/ipaynow/wechatpay/plugin/view/k;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/k;->cE:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final A(Ljava/lang/String;)Lcom/ipaynow/wechatpay/plugin/view/k;
    .locals 1

    .prologue
    .line 123
    iput-object p1, p0, Lcom/ipaynow/wechatpay/plugin/view/k;->cD:Ljava/lang/String;

    .line 124
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/k;->cA:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/k;->cA:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    :cond_0
    return-object p0
.end method

.method public final a(Lcom/ipaynow/wechatpay/plugin/view/m;)Lcom/ipaynow/wechatpay/plugin/view/k;
    .locals 3

    .prologue
    .line 75
    const/4 v0, 0x0

    .line 76
    invoke-static {}, Lcom/ipaynow/wechatpay/plugin/view/k;->ai()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/ipaynow/wechatpay/plugin/view/m;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 91
    :goto_0
    iget-object v1, p0, Lcom/ipaynow/wechatpay/plugin/view/k;->cw:Lcom/ipaynow/wechatpay/plugin/view/l;

    invoke-virtual {v1, v0}, Lcom/ipaynow/wechatpay/plugin/view/l;->setView(Landroid/view/View;)V

    .line 92
    return-object p0

    .line 79
    :pswitch_0
    new-instance v0, Lcom/ipaynow/wechatpay/plugin/view/p;

    iget-object v1, p0, Lcom/ipaynow/wechatpay/plugin/view/k;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ipaynow/wechatpay/plugin/view/p;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 82
    :pswitch_1
    new-instance v0, Lcom/ipaynow/wechatpay/plugin/view/n;

    iget-object v1, p0, Lcom/ipaynow/wechatpay/plugin/view/k;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ipaynow/wechatpay/plugin/view/n;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 85
    :pswitch_2
    new-instance v0, Lcom/ipaynow/wechatpay/plugin/view/a;

    iget-object v1, p0, Lcom/ipaynow/wechatpay/plugin/view/k;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ipaynow/wechatpay/plugin/view/a;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 88
    :pswitch_3
    new-instance v0, Lcom/ipaynow/wechatpay/plugin/view/c;

    iget-object v1, p0, Lcom/ipaynow/wechatpay/plugin/view/k;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ipaynow/wechatpay/plugin/view/c;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 76
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public ag()Lcom/ipaynow/wechatpay/plugin/view/k;
    .locals 1

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/ipaynow/wechatpay/plugin/view/k;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/k;->cw:Lcom/ipaynow/wechatpay/plugin/view/l;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/k;->cw:Lcom/ipaynow/wechatpay/plugin/view/l;

    invoke-virtual {v0}, Lcom/ipaynow/wechatpay/plugin/view/l;->show()V

    .line 178
    :cond_0
    return-object p0
.end method

.method public final ah()Lcom/ipaynow/wechatpay/plugin/view/k;
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ipaynow/wechatpay/plugin/view/k;->cz:Z

    .line 163
    return-object p0
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/k;->cw:Lcom/ipaynow/wechatpay/plugin/view/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/k;->cw:Lcom/ipaynow/wechatpay/plugin/view/l;

    invoke-virtual {v0}, Lcom/ipaynow/wechatpay/plugin/view/l;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/k;->cw:Lcom/ipaynow/wechatpay/plugin/view/l;

    invoke-virtual {v0}, Lcom/ipaynow/wechatpay/plugin/view/l;->dismiss()V

    .line 188
    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/k;->cw:Lcom/ipaynow/wechatpay/plugin/view/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/k;->cw:Lcom/ipaynow/wechatpay/plugin/view/l;

    invoke-virtual {v0}, Lcom/ipaynow/wechatpay/plugin/view/l;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 307
    iput-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/k;->ct:Lcom/ipaynow/wechatpay/plugin/view/b;

    .line 308
    iput-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/k;->cu:Landroid/widget/LinearLayout;

    .line 309
    iput-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/k;->cv:Landroid/widget/FrameLayout;

    .line 310
    iput-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/k;->cw:Lcom/ipaynow/wechatpay/plugin/view/l;

    .line 311
    return-void
.end method
