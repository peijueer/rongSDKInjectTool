.class final Lcom/a/a/i;
.super Landroid/app/Dialog;


# instance fields
.field private bD:Lcom/a/a/d;

.field private bE:Lcom/a/a/g;

.field private bF:Landroid/view/View;

.field final synthetic bG:Lcom/a/a/h;


# direct methods
.method public constructor <init>(Lcom/a/a/h;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/a/a/i;->bG:Lcom/a/a/h;

    invoke-direct {p0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    const/high16 v6, 0x41800000    # 16.0f

    const/4 v5, -0x2

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v9}, Lcom/a/a/i;->requestWindowFeature(I)Z

    iget-object v0, p0, Lcom/a/a/i;->bG:Lcom/a/a/h;

    new-instance v1, Lcom/a/a/b;

    invoke-virtual {p0}, Lcom/a/a/i;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/a/a/b;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/a/a/h;->a(Lcom/a/a/h;Lcom/a/a/b;)V

    iget-object v0, p0, Lcom/a/a/i;->bG:Lcom/a/a/h;

    invoke-static {v0}, Lcom/a/a/h;->c(Lcom/a/a/h;)Lcom/a/a/b;

    move-result-object v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/a/a/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/a/a/i;->bG:Lcom/a/a/h;

    invoke-static {v0}, Lcom/a/a/h;->c(Lcom/a/a/h;)Lcom/a/a/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/a/a/i;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/a/a/l;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p0}, Lcom/a/a/i;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/a/a/l;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {p0}, Lcom/a/a/i;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v6}, Lcom/a/a/l;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {p0}, Lcom/a/a/i;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v6}, Lcom/a/a/l;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/a/a/b;->setPadding(IIII)V

    iget-object v0, p0, Lcom/a/a/i;->bG:Lcom/a/a/h;

    invoke-static {v0}, Lcom/a/a/h;->c(Lcom/a/a/h;)Lcom/a/a/b;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/a/a/b;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/a/a/i;->bG:Lcom/a/a/h;

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/a/a/i;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/a/a/h;->a(Lcom/a/a/h;Landroid/widget/LinearLayout;)V

    iget-object v0, p0, Lcom/a/a/i;->bG:Lcom/a/a/h;

    invoke-static {v0}, Lcom/a/a/h;->d(Lcom/a/a/h;)Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/a/a/i;->bG:Lcom/a/a/h;

    invoke-static {v0}, Lcom/a/a/h;->d(Lcom/a/a/h;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/a/a/i;->bG:Lcom/a/a/h;

    invoke-static {v0}, Lcom/a/a/h;->d(Lcom/a/a/h;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v0, p0, Lcom/a/a/i;->bG:Lcom/a/a/h;

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/a/a/i;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/a/a/h;->a(Lcom/a/a/h;Landroid/widget/FrameLayout;)V

    iget-object v0, p0, Lcom/a/a/i;->bG:Lcom/a/a/h;

    invoke-static {v0}, Lcom/a/a/h;->e(Lcom/a/a/h;)Landroid/widget/FrameLayout;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/a/a/i;->bG:Lcom/a/a/h;

    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/a/a/i;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/a/a/h;->a(Lcom/a/a/h;Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/a/a/i;->bG:Lcom/a/a/h;

    invoke-static {v0}, Lcom/a/a/h;->f(Lcom/a/a/h;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/a/a/i;->bG:Lcom/a/a/h;

    invoke-static {v0}, Lcom/a/a/h;->f(Lcom/a/a/h;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/a/a/i;->bG:Lcom/a/a/h;

    invoke-static {v0}, Lcom/a/a/h;->f(Lcom/a/a/h;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/a/a/i;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v1, v2}, Lcom/a/a/l;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Lcom/a/a/i;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v1, v2}, Lcom/a/a/l;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v1, p0, Lcom/a/a/i;->bG:Lcom/a/a/h;

    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/a/a/i;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lcom/a/a/h;->b(Lcom/a/a/h;Landroid/widget/TextView;)V

    iget-object v1, p0, Lcom/a/a/i;->bG:Lcom/a/a/h;

    invoke-static {v1}, Lcom/a/a/h;->g(Lcom/a/a/h;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/a/a/i;->bG:Lcom/a/a/h;

    invoke-static {v1}, Lcom/a/a/h;->f(Lcom/a/a/h;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x2

    const/high16 v3, 0x41500000    # 13.0f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Lcom/a/a/i;->bG:Lcom/a/a/h;

    invoke-static {v1}, Lcom/a/a/h;->f(Lcom/a/a/h;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/a/a/i;->bG:Lcom/a/a/h;

    invoke-static {v2}, Lcom/a/a/h;->c(Lcom/a/a/h;)Lcom/a/a/b;

    move-result-object v2

    iget-object v3, p0, Lcom/a/a/i;->bG:Lcom/a/a/h;

    invoke-static {v3}, Lcom/a/a/h;->d(Lcom/a/a/h;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/a/a/b;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/a/a/i;->bG:Lcom/a/a/h;

    invoke-static {v2}, Lcom/a/a/h;->d(Lcom/a/a/h;)Landroid/widget/LinearLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/a/a/i;->bG:Lcom/a/a/h;

    invoke-static {v3}, Lcom/a/a/h;->e(Lcom/a/a/h;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/a/a/i;->bG:Lcom/a/a/h;

    invoke-static {v2}, Lcom/a/a/h;->d(Lcom/a/a/h;)Landroid/widget/LinearLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/a/a/i;->bG:Lcom/a/a/h;

    invoke-static {v3}, Lcom/a/a/h;->f(Lcom/a/a/h;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/a/a/i;->bG:Lcom/a/a/h;

    invoke-static {v0}, Lcom/a/a/h;->d(Lcom/a/a/h;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v2, p0, Lcom/a/a/i;->bG:Lcom/a/a/h;

    invoke-static {v2}, Lcom/a/a/h;->g(Lcom/a/a/h;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/a/a/i;->bG:Lcom/a/a/h;

    invoke-static {v0}, Lcom/a/a/h;->c(Lcom/a/a/h;)Lcom/a/a/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/a/a/i;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/a/a/i;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/a/a/i;->bG:Lcom/a/a/h;

    invoke-static {v2}, Lcom/a/a/h;->a(Lcom/a/a/h;)F

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0, v7}, Lcom/a/a/i;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/a/a/i;->bG:Lcom/a/a/h;

    invoke-static {v0}, Lcom/a/a/h;->b(Lcom/a/a/h;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/a/a/i;->setCancelable(Z)V

    iget-object v0, p0, Lcom/a/a/i;->bG:Lcom/a/a/h;

    invoke-static {v0}, Lcom/a/a/h;->c(Lcom/a/a/h;)Lcom/a/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/i;->bG:Lcom/a/a/h;

    invoke-static {v1}, Lcom/a/a/h;->h(Lcom/a/a/h;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/a/a/b;->c(I)V

    iget-object v0, p0, Lcom/a/a/i;->bG:Lcom/a/a/h;

    invoke-static {v0}, Lcom/a/a/h;->c(Lcom/a/a/h;)Lcom/a/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/i;->bG:Lcom/a/a/h;

    invoke-static {v1}, Lcom/a/a/h;->i(Lcom/a/a/h;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/a/a/b;->setCornerRadius(F)V

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/a/a/i;->bG:Lcom/a/a/h;

    invoke-static {v1}, Lcom/a/a/h;->e(Lcom/a/a/h;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/a/a/i;->bF:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/a/a/i;->bD:Lcom/a/a/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/i;->bD:Lcom/a/a/d;

    iget-object v1, p0, Lcom/a/a/i;->bG:Lcom/a/a/h;

    invoke-static {v1}, Lcom/a/a/h;->j(Lcom/a/a/h;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/a/a/d;->setMax(I)V

    :cond_0
    iget-object v0, p0, Lcom/a/a/i;->bE:Lcom/a/a/g;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/a/a/i;->bE:Lcom/a/a/g;

    iget-object v1, p0, Lcom/a/a/i;->bG:Lcom/a/a/h;

    invoke-static {v1}, Lcom/a/a/h;->k(Lcom/a/a/h;)I

    move-result v1

    int-to-float v1, v1

    invoke-interface {v0, v1}, Lcom/a/a/g;->a(F)V

    :cond_1
    iget-object v0, p0, Lcom/a/a/i;->bG:Lcom/a/a/h;

    invoke-static {v0}, Lcom/a/a/h;->l(Lcom/a/a/h;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/a/a/i;->bG:Lcom/a/a/h;

    invoke-static {v0}, Lcom/a/a/h;->f(Lcom/a/a/h;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/i;->bG:Lcom/a/a/h;

    invoke-static {v1}, Lcom/a/a/h;->l(Lcom/a/a/h;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/a/a/i;->bG:Lcom/a/a/h;

    invoke-static {v0}, Lcom/a/a/h;->f(Lcom/a/a/h;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/a/a/i;->bG:Lcom/a/a/h;

    invoke-static {v0}, Lcom/a/a/h;->m(Lcom/a/a/h;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/a/a/i;->bG:Lcom/a/a/h;

    invoke-static {v0}, Lcom/a/a/h;->g(Lcom/a/a/h;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/i;->bG:Lcom/a/a/h;

    invoke-static {v1}, Lcom/a/a/h;->m(Lcom/a/a/h;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/a/a/i;->bG:Lcom/a/a/h;

    invoke-static {v0}, Lcom/a/a/h;->g(Lcom/a/a/h;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public final setView(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_2

    instance-of v0, p1, Lcom/a/a/d;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/a/a/d;

    iput-object v0, p0, Lcom/a/a/i;->bD:Lcom/a/a/d;

    :cond_0
    instance-of v0, p1, Lcom/a/a/g;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/a/a/g;

    iput-object v0, p0, Lcom/a/a/i;->bE:Lcom/a/a/g;

    :cond_1
    iput-object p1, p0, Lcom/a/a/i;->bF:Landroid/view/View;

    :cond_2
    return-void
.end method
