.class public final Lcom/unionpay/mobile/android/widgets/ad;
.super Lcom/unionpay/mobile/android/widgets/z;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILorg/json/JSONObject;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/unionpay/mobile/android/widgets/ad;-><init>(Landroid/content/Context;ILorg/json/JSONObject;Ljava/lang/String;B)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ILorg/json/JSONObject;Ljava/lang/String;B)V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, -0x2

    const/4 v4, 0x0

    invoke-direct {p0, p1, p3, p4}, Lcom/unionpay/mobile/android/widgets/z;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)V

    iput v4, p0, Lcom/unionpay/mobile/android/widgets/ad;->a:I

    iput p2, p0, Lcom/unionpay/mobile/android/widgets/ad;->a:I

    if-eqz p3, :cond_0

    const-string v0, "style"

    invoke-static {p3, v0}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/ad;->b:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ad;->l:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/ad;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget v0, p0, Lcom/unionpay/mobile/android/widgets/ad;->a:I

    iget v0, p0, Lcom/unionpay/mobile/android/widgets/ad;->a:I

    sget v0, Lcom/unionpay/mobile/android/global/a;->f:I

    new-instance v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/ad;->c:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/ad;->n:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ad;->n:Landroid/widget/TextView;

    sget v2, Lcom/unionpay/mobile/android/global/b;->k:F

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ad;->n:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/ad;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ad;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ad;->n:Landroid/widget/TextView;

    const v2, -0xcccccd

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const v2, 0x3e99999a    # 0.3f

    invoke-direct {v0, v4, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/ad;->n:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/ad;->c:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/ad;->o:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ad;->o:Landroid/widget/TextView;

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ad;->o:Landroid/widget/TextView;

    sget v2, Lcom/unionpay/mobile/android/global/b;->k:F

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/ad;->i()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/ad;->b:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/unionpay/mobile/android/data/a;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v0

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/ad;->o:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ad;->o:Landroid/widget/TextView;

    sget v2, Lcom/unionpay/mobile/android/global/a;->g:I

    invoke-virtual {v0, v4, v4, v2, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const v2, 0x3f333333    # 0.7f

    invoke-direct {v0, v4, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v2, 0x15

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/ad;->o:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 3

    const v2, -0x777778

    invoke-direct {p0, p1, p2, p3}, Lcom/unionpay/mobile/android/widgets/z;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/unionpay/mobile/android/widgets/ad;->a:I

    sget v0, Lcom/unionpay/mobile/android/global/a;->f:I

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/ad;->s()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/ad;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/ad;->n:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ad;->n:Landroid/widget/TextView;

    sget v1, Lcom/unionpay/mobile/android/global/b;->k:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ad;->n:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/ad;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ad;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ad;->n:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/widgets/ad;->addView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/ad;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/ad;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/ad;->o:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ad;->o:Landroid/widget/TextView;

    sget v1, Lcom/unionpay/mobile/android/global/b;->k:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ad;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ad;->o:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/ad;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ad;->o:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/widgets/ad;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(F)V
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ad;->o:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    return-void
.end method

.method public final b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ad;->o:Landroid/widget/TextView;

    const v1, -0x666667

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
