.class public final Lcom/a/a/h;
.super Ljava/lang/Object;


# static fields
.field private static synthetic bC:[I


# instance fields
.field private bA:I

.field private bB:Z

.field private bf:F

.field private bo:Lcom/a/a/b;

.field private bp:Landroid/widget/LinearLayout;

.field private bq:Landroid/widget/FrameLayout;

.field private br:Lcom/a/a/i;

.field private bs:F

.field private bt:I

.field private bu:Z

.field private bv:Landroid/widget/TextView;

.field private bw:Landroid/widget/TextView;

.field private bx:I

.field private by:Ljava/lang/String;

.field private bz:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/a/h;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/a/a/i;

    invoke-direct {v0, p0, p1}, Lcom/a/a/i;-><init>(Lcom/a/a/h;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/a/a/h;->br:Lcom/a/a/i;

    const/4 v0, 0x0

    iput v0, p0, Lcom/a/a/h;->bs:F

    const-string v0, "#b1000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/a/a/h;->bt:I

    iput v1, p0, Lcom/a/a/h;->bx:I

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/a/a/h;->bf:F

    iput-boolean v1, p0, Lcom/a/a/h;->bB:Z

    sget-object v0, Lcom/a/a/j;->bH:Lcom/a/a/j;

    invoke-virtual {p0, v0}, Lcom/a/a/h;->a(Lcom/a/a/j;)Lcom/a/a/h;

    return-void
.end method

.method private static synthetic O()[I
    .locals 3

    sget-object v0, Lcom/a/a/h;->bC:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/a/a/j;->values()[Lcom/a/a/j;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/a/a/j;->bJ:Lcom/a/a/j;

    invoke-virtual {v1}, Lcom/a/a/j;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/a/a/j;->bK:Lcom/a/a/j;

    invoke-virtual {v1}, Lcom/a/a/j;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/a/a/j;->bI:Lcom/a/a/j;

    invoke-virtual {v1}, Lcom/a/a/j;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/a/a/j;->bH:Lcom/a/a/j;

    invoke-virtual {v1}, Lcom/a/a/j;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/a/a/h;->bC:[I

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

.method static synthetic a(Lcom/a/a/h;)F
    .locals 1

    iget v0, p0, Lcom/a/a/h;->bs:F

    return v0
.end method

.method static synthetic a(Lcom/a/a/h;Landroid/widget/FrameLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/a/a/h;->bq:Landroid/widget/FrameLayout;

    return-void
.end method

.method static synthetic a(Lcom/a/a/h;Landroid/widget/LinearLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/a/a/h;->bp:Landroid/widget/LinearLayout;

    return-void
.end method

.method static synthetic a(Lcom/a/a/h;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/a/a/h;->bv:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic a(Lcom/a/a/h;Lcom/a/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/a/a/h;->bo:Lcom/a/a/b;

    return-void
.end method

.method static synthetic b(Lcom/a/a/h;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/a/a/h;->bw:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic b(Lcom/a/a/h;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/a/a/h;->bu:Z

    return v0
.end method

.method static synthetic c(Lcom/a/a/h;)Lcom/a/a/b;
    .locals 1

    iget-object v0, p0, Lcom/a/a/h;->bo:Lcom/a/a/b;

    return-object v0
.end method

.method static synthetic d(Lcom/a/a/h;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/a/a/h;->bp:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic e(Lcom/a/a/h;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/a/a/h;->bq:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic f(Lcom/a/a/h;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/a/a/h;->bv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic g(Lcom/a/a/h;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/a/a/h;->bw:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic h(Lcom/a/a/h;)I
    .locals 1

    iget v0, p0, Lcom/a/a/h;->bt:I

    return v0
.end method

.method static synthetic i(Lcom/a/a/h;)F
    .locals 1

    iget v0, p0, Lcom/a/a/h;->bf:F

    return v0
.end method

.method static synthetic j(Lcom/a/a/h;)I
    .locals 1

    iget v0, p0, Lcom/a/a/h;->bA:I

    return v0
.end method

.method static synthetic k(Lcom/a/a/h;)I
    .locals 1

    iget v0, p0, Lcom/a/a/h;->bx:I

    return v0
.end method

.method static synthetic l(Lcom/a/a/h;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/a/a/h;->by:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic m(Lcom/a/a/h;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/a/a/h;->bz:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final M()Lcom/a/a/h;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/a/a/h;->bu:Z

    return-object p0
.end method

.method public final N()Lcom/a/a/h;
    .locals 1

    iget-object v0, p0, Lcom/a/a/h;->br:Lcom/a/a/i;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/a/a/h;->br:Lcom/a/a/i;

    invoke-virtual {v0}, Lcom/a/a/i;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/a/a/h;->br:Lcom/a/a/i;

    invoke-virtual {v0}, Lcom/a/a/i;->show()V

    :cond_0
    return-object p0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/a/a/j;)Lcom/a/a/h;
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/a/a/h;->O()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/a/a/j;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    iget-object v1, p0, Lcom/a/a/h;->br:Lcom/a/a/i;

    invoke-virtual {v1, v0}, Lcom/a/a/i;->setView(Landroid/view/View;)V

    return-object p0

    :pswitch_0
    new-instance v0, Lcom/a/a/m;

    iget-object v1, p0, Lcom/a/a/h;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/a/a/m;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/a/a/k;

    iget-object v1, p0, Lcom/a/a/h;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/a/a/k;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/a/a/a;

    iget-object v1, p0, Lcom/a/a/h;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/a/a/a;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/a/a/c;

    iget-object v1, p0, Lcom/a/a/h;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/a/a/c;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final dismiss()V
    .locals 1

    iget-object v0, p0, Lcom/a/a/h;->br:Lcom/a/a/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/h;->br:Lcom/a/a/i;

    invoke-virtual {v0}, Lcom/a/a/i;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/h;->br:Lcom/a/a/i;

    invoke-virtual {v0}, Lcom/a/a/i;->dismiss()V

    :cond_0
    return-void
.end method

.method public final m(Ljava/lang/String;)Lcom/a/a/h;
    .locals 1

    iput-object p1, p0, Lcom/a/a/h;->by:Ljava/lang/String;

    iget-object v0, p0, Lcom/a/a/h;->bv:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/h;->bv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-object p0
.end method
