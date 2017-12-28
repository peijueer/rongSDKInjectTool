.class final Lcom/ipaynow/wechatpay/plugin/view/l;
.super Landroid/app/Dialog;
.source "SourceFile"


# instance fields
.field private cI:Lcom/ipaynow/wechatpay/plugin/view/g;

.field private cJ:Lcom/ipaynow/wechatpay/plugin/view/j;

.field private cK:Landroid/view/View;

.field final synthetic cL:Lcom/ipaynow/wechatpay/plugin/view/k;


# direct methods
.method public constructor <init>(Lcom/ipaynow/wechatpay/plugin/view/k;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/ipaynow/wechatpay/plugin/view/l;->cL:Lcom/ipaynow/wechatpay/plugin/view/k;

    .line 198
    invoke-direct {p0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 199
    return-void
.end method


# virtual methods
.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    const/high16 v6, 0x41800000    # 16.0f

    const/4 v5, -0x2

    .line 203
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 204
    invoke-virtual {p0, v9}, Lcom/ipaynow/wechatpay/plugin/view/l;->requestWindowFeature(I)Z

    .line 205
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/l;->cL:Lcom/ipaynow/wechatpay/plugin/view/k;

    new-instance v1, Lcom/ipaynow/wechatpay/plugin/view/b;

    invoke-virtual {p0}, Lcom/ipaynow/wechatpay/plugin/view/l;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ipaynow/wechatpay/plugin/view/b;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/ipaynow/wechatpay/plugin/view/k;->a(Lcom/ipaynow/wechatpay/plugin/view/k;Lcom/ipaynow/wechatpay/plugin/view/b;)V

    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/l;->cL:Lcom/ipaynow/wechatpay/plugin/view/k;

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/view/k;->c(Lcom/ipaynow/wechatpay/plugin/view/k;)Lcom/ipaynow/wechatpay/plugin/view/b;

    move-result-object v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/ipaynow/wechatpay/plugin/view/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/l;->cL:Lcom/ipaynow/wechatpay/plugin/view/k;

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/view/k;->c(Lcom/ipaynow/wechatpay/plugin/view/k;)Lcom/ipaynow/wechatpay/plugin/view/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ipaynow/wechatpay/plugin/view/l;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/ipaynow/wechatpay/plugin/view/o;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p0}, Lcom/ipaynow/wechatpay/plugin/view/l;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/ipaynow/wechatpay/plugin/view/o;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {p0}, Lcom/ipaynow/wechatpay/plugin/view/l;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v6}, Lcom/ipaynow/wechatpay/plugin/view/o;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {p0}, Lcom/ipaynow/wechatpay/plugin/view/l;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v6}, Lcom/ipaynow/wechatpay/plugin/view/o;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ipaynow/wechatpay/plugin/view/b;->setPadding(IIII)V

    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/l;->cL:Lcom/ipaynow/wechatpay/plugin/view/k;

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/view/k;->c(Lcom/ipaynow/wechatpay/plugin/view/k;)Lcom/ipaynow/wechatpay/plugin/view/b;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/ipaynow/wechatpay/plugin/view/b;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/l;->cL:Lcom/ipaynow/wechatpay/plugin/view/k;

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/ipaynow/wechatpay/plugin/view/l;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/ipaynow/wechatpay/plugin/view/k;->a(Lcom/ipaynow/wechatpay/plugin/view/k;Landroid/widget/LinearLayout;)V

    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/l;->cL:Lcom/ipaynow/wechatpay/plugin/view/k;

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/view/k;->d(Lcom/ipaynow/wechatpay/plugin/view/k;)Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/l;->cL:Lcom/ipaynow/wechatpay/plugin/view/k;

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/view/k;->d(Lcom/ipaynow/wechatpay/plugin/view/k;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/l;->cL:Lcom/ipaynow/wechatpay/plugin/view/k;

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/view/k;->d(Lcom/ipaynow/wechatpay/plugin/view/k;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/l;->cL:Lcom/ipaynow/wechatpay/plugin/view/k;

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/ipaynow/wechatpay/plugin/view/l;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/ipaynow/wechatpay/plugin/view/k;->a(Lcom/ipaynow/wechatpay/plugin/view/k;Landroid/widget/FrameLayout;)V

    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/l;->cL:Lcom/ipaynow/wechatpay/plugin/view/k;

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/view/k;->e(Lcom/ipaynow/wechatpay/plugin/view/k;)Landroid/widget/FrameLayout;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/l;->cL:Lcom/ipaynow/wechatpay/plugin/view/k;

    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ipaynow/wechatpay/plugin/view/l;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/ipaynow/wechatpay/plugin/view/k;->a(Lcom/ipaynow/wechatpay/plugin/view/k;Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/l;->cL:Lcom/ipaynow/wechatpay/plugin/view/k;

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/view/k;->f(Lcom/ipaynow/wechatpay/plugin/view/k;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/l;->cL:Lcom/ipaynow/wechatpay/plugin/view/k;

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/view/k;->f(Lcom/ipaynow/wechatpay/plugin/view/k;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/l;->cL:Lcom/ipaynow/wechatpay/plugin/view/k;

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/view/k;->f(Lcom/ipaynow/wechatpay/plugin/view/k;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/ipaynow/wechatpay/plugin/view/l;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v1, v2}, Lcom/ipaynow/wechatpay/plugin/view/o;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Lcom/ipaynow/wechatpay/plugin/view/l;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v1, v2}, Lcom/ipaynow/wechatpay/plugin/view/o;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v1, p0, Lcom/ipaynow/wechatpay/plugin/view/l;->cL:Lcom/ipaynow/wechatpay/plugin/view/k;

    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ipaynow/wechatpay/plugin/view/l;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lcom/ipaynow/wechatpay/plugin/view/k;->b(Lcom/ipaynow/wechatpay/plugin/view/k;Landroid/widget/TextView;)V

    iget-object v1, p0, Lcom/ipaynow/wechatpay/plugin/view/l;->cL:Lcom/ipaynow/wechatpay/plugin/view/k;

    invoke-static {v1}, Lcom/ipaynow/wechatpay/plugin/view/k;->g(Lcom/ipaynow/wechatpay/plugin/view/k;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/ipaynow/wechatpay/plugin/view/l;->cL:Lcom/ipaynow/wechatpay/plugin/view/k;

    invoke-static {v1}, Lcom/ipaynow/wechatpay/plugin/view/k;->f(Lcom/ipaynow/wechatpay/plugin/view/k;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x2

    const/high16 v3, 0x41500000    # 13.0f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Lcom/ipaynow/wechatpay/plugin/view/l;->cL:Lcom/ipaynow/wechatpay/plugin/view/k;

    invoke-static {v1}, Lcom/ipaynow/wechatpay/plugin/view/k;->f(Lcom/ipaynow/wechatpay/plugin/view/k;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/ipaynow/wechatpay/plugin/view/l;->cL:Lcom/ipaynow/wechatpay/plugin/view/k;

    invoke-static {v2}, Lcom/ipaynow/wechatpay/plugin/view/k;->c(Lcom/ipaynow/wechatpay/plugin/view/k;)Lcom/ipaynow/wechatpay/plugin/view/b;

    move-result-object v2

    iget-object v3, p0, Lcom/ipaynow/wechatpay/plugin/view/l;->cL:Lcom/ipaynow/wechatpay/plugin/view/k;

    invoke-static {v3}, Lcom/ipaynow/wechatpay/plugin/view/k;->d(Lcom/ipaynow/wechatpay/plugin/view/k;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ipaynow/wechatpay/plugin/view/b;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/ipaynow/wechatpay/plugin/view/l;->cL:Lcom/ipaynow/wechatpay/plugin/view/k;

    invoke-static {v2}, Lcom/ipaynow/wechatpay/plugin/view/k;->d(Lcom/ipaynow/wechatpay/plugin/view/k;)Landroid/widget/LinearLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/ipaynow/wechatpay/plugin/view/l;->cL:Lcom/ipaynow/wechatpay/plugin/view/k;

    invoke-static {v3}, Lcom/ipaynow/wechatpay/plugin/view/k;->e(Lcom/ipaynow/wechatpay/plugin/view/k;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/ipaynow/wechatpay/plugin/view/l;->cL:Lcom/ipaynow/wechatpay/plugin/view/k;

    invoke-static {v2}, Lcom/ipaynow/wechatpay/plugin/view/k;->d(Lcom/ipaynow/wechatpay/plugin/view/k;)Landroid/widget/LinearLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/ipaynow/wechatpay/plugin/view/l;->cL:Lcom/ipaynow/wechatpay/plugin/view/k;

    invoke-static {v3}, Lcom/ipaynow/wechatpay/plugin/view/k;->f(Lcom/ipaynow/wechatpay/plugin/view/k;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/l;->cL:Lcom/ipaynow/wechatpay/plugin/view/k;

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/view/k;->d(Lcom/ipaynow/wechatpay/plugin/view/k;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v2, p0, Lcom/ipaynow/wechatpay/plugin/view/l;->cL:Lcom/ipaynow/wechatpay/plugin/view/k;

    invoke-static {v2}, Lcom/ipaynow/wechatpay/plugin/view/k;->g(Lcom/ipaynow/wechatpay/plugin/view/k;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/l;->cL:Lcom/ipaynow/wechatpay/plugin/view/k;

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/view/k;->c(Lcom/ipaynow/wechatpay/plugin/view/k;)Lcom/ipaynow/wechatpay/plugin/view/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ipaynow/wechatpay/plugin/view/l;->setContentView(Landroid/view/View;)V

    .line 207
    invoke-virtual {p0}, Lcom/ipaynow/wechatpay/plugin/view/l;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 208
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 209
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 210
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 211
    iget-object v2, p0, Lcom/ipaynow/wechatpay/plugin/view/l;->cL:Lcom/ipaynow/wechatpay/plugin/view/k;

    invoke-static {v2}, Lcom/ipaynow/wechatpay/plugin/view/k;->a(Lcom/ipaynow/wechatpay/plugin/view/k;)F

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 212
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 214
    invoke-virtual {p0, v7}, Lcom/ipaynow/wechatpay/plugin/view/l;->setCanceledOnTouchOutside(Z)V

    .line 215
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/l;->cL:Lcom/ipaynow/wechatpay/plugin/view/k;

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/view/k;->b(Lcom/ipaynow/wechatpay/plugin/view/k;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ipaynow/wechatpay/plugin/view/l;->setCancelable(Z)V

    .line 217
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/l;->cL:Lcom/ipaynow/wechatpay/plugin/view/k;

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/view/k;->c(Lcom/ipaynow/wechatpay/plugin/view/k;)Lcom/ipaynow/wechatpay/plugin/view/b;

    move-result-object v0

    iget-object v1, p0, Lcom/ipaynow/wechatpay/plugin/view/l;->cL:Lcom/ipaynow/wechatpay/plugin/view/k;

    invoke-static {v1}, Lcom/ipaynow/wechatpay/plugin/view/k;->h(Lcom/ipaynow/wechatpay/plugin/view/k;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ipaynow/wechatpay/plugin/view/b;->b(I)V

    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/l;->cL:Lcom/ipaynow/wechatpay/plugin/view/k;

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/view/k;->c(Lcom/ipaynow/wechatpay/plugin/view/k;)Lcom/ipaynow/wechatpay/plugin/view/b;

    move-result-object v0

    iget-object v1, p0, Lcom/ipaynow/wechatpay/plugin/view/l;->cL:Lcom/ipaynow/wechatpay/plugin/view/k;

    invoke-static {v1}, Lcom/ipaynow/wechatpay/plugin/view/k;->i(Lcom/ipaynow/wechatpay/plugin/view/k;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ipaynow/wechatpay/plugin/view/b;->setCornerRadius(F)V

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/ipaynow/wechatpay/plugin/view/l;->cL:Lcom/ipaynow/wechatpay/plugin/view/k;

    invoke-static {v1}, Lcom/ipaynow/wechatpay/plugin/view/k;->e(Lcom/ipaynow/wechatpay/plugin/view/k;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/ipaynow/wechatpay/plugin/view/l;->cK:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/l;->cI:Lcom/ipaynow/wechatpay/plugin/view/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/l;->cI:Lcom/ipaynow/wechatpay/plugin/view/g;

    iget-object v1, p0, Lcom/ipaynow/wechatpay/plugin/view/l;->cL:Lcom/ipaynow/wechatpay/plugin/view/k;

    invoke-static {v1}, Lcom/ipaynow/wechatpay/plugin/view/k;->j(Lcom/ipaynow/wechatpay/plugin/view/k;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/ipaynow/wechatpay/plugin/view/g;->setMax(I)V

    :cond_0
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/l;->cJ:Lcom/ipaynow/wechatpay/plugin/view/j;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/l;->cJ:Lcom/ipaynow/wechatpay/plugin/view/j;

    iget-object v1, p0, Lcom/ipaynow/wechatpay/plugin/view/l;->cL:Lcom/ipaynow/wechatpay/plugin/view/k;

    invoke-static {v1}, Lcom/ipaynow/wechatpay/plugin/view/k;->k(Lcom/ipaynow/wechatpay/plugin/view/k;)I

    move-result v1

    int-to-float v1, v1

    invoke-interface {v0, v1}, Lcom/ipaynow/wechatpay/plugin/view/j;->a(F)V

    :cond_1
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/l;->cL:Lcom/ipaynow/wechatpay/plugin/view/k;

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/view/k;->l(Lcom/ipaynow/wechatpay/plugin/view/k;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/l;->cL:Lcom/ipaynow/wechatpay/plugin/view/k;

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/view/k;->f(Lcom/ipaynow/wechatpay/plugin/view/k;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/ipaynow/wechatpay/plugin/view/l;->cL:Lcom/ipaynow/wechatpay/plugin/view/k;

    invoke-static {v1}, Lcom/ipaynow/wechatpay/plugin/view/k;->l(Lcom/ipaynow/wechatpay/plugin/view/k;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/l;->cL:Lcom/ipaynow/wechatpay/plugin/view/k;

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/view/k;->f(Lcom/ipaynow/wechatpay/plugin/view/k;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/l;->cL:Lcom/ipaynow/wechatpay/plugin/view/k;

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/view/k;->m(Lcom/ipaynow/wechatpay/plugin/view/k;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/l;->cL:Lcom/ipaynow/wechatpay/plugin/view/k;

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/view/k;->g(Lcom/ipaynow/wechatpay/plugin/view/k;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/ipaynow/wechatpay/plugin/view/l;->cL:Lcom/ipaynow/wechatpay/plugin/view/k;

    invoke-static {v1}, Lcom/ipaynow/wechatpay/plugin/view/k;->m(Lcom/ipaynow/wechatpay/plugin/view/k;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/l;->cL:Lcom/ipaynow/wechatpay/plugin/view/k;

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/view/k;->g(Lcom/ipaynow/wechatpay/plugin/view/k;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 218
    :cond_3
    return-void
.end method

.method public final setView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 293
    if-eqz p1, :cond_2

    .line 294
    instance-of v0, p1, Lcom/ipaynow/wechatpay/plugin/view/g;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 295
    check-cast v0, Lcom/ipaynow/wechatpay/plugin/view/g;

    iput-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/l;->cI:Lcom/ipaynow/wechatpay/plugin/view/g;

    .line 297
    :cond_0
    instance-of v0, p1, Lcom/ipaynow/wechatpay/plugin/view/j;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 298
    check-cast v0, Lcom/ipaynow/wechatpay/plugin/view/j;

    iput-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/l;->cJ:Lcom/ipaynow/wechatpay/plugin/view/j;

    .line 300
    :cond_1
    iput-object p1, p0, Lcom/ipaynow/wechatpay/plugin/view/l;->cK:Landroid/view/View;

    .line 302
    :cond_2
    return-void
.end method
