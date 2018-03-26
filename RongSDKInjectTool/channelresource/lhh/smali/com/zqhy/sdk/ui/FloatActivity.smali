.class public Lcom/zqhy/sdk/ui/FloatActivity;
.super Landroid/app/Activity;
.source "FloatActivity.java"


# instance fields
.field private aCache:Lcom/zqhy/sdk/model/a;

.field private endX:I

.field private endY:I

.field private isVibrate:Z

.field private rb:Landroid/widget/RadioButton;

.field private startX:I

.field private startY:I

.field private tv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 33
    iput v0, p0, Lcom/zqhy/sdk/ui/FloatActivity;->startX:I

    .line 34
    iput v0, p0, Lcom/zqhy/sdk/ui/FloatActivity;->startY:I

    .line 35
    iput v0, p0, Lcom/zqhy/sdk/ui/FloatActivity;->endX:I

    .line 36
    iput v0, p0, Lcom/zqhy/sdk/ui/FloatActivity;->endY:I

    .line 39
    iput-boolean v0, p0, Lcom/zqhy/sdk/ui/FloatActivity;->isVibrate:Z

    return-void
.end method

.method static synthetic access$002(Lcom/zqhy/sdk/ui/FloatActivity;I)I
    .locals 0

    .prologue
    .line 28
    iput p1, p0, Lcom/zqhy/sdk/ui/FloatActivity;->startX:I

    return p1
.end method

.method static synthetic access$102(Lcom/zqhy/sdk/ui/FloatActivity;I)I
    .locals 0

    .prologue
    .line 28
    iput p1, p0, Lcom/zqhy/sdk/ui/FloatActivity;->endX:I

    return p1
.end method

.method static synthetic access$202(Lcom/zqhy/sdk/ui/FloatActivity;I)I
    .locals 0

    .prologue
    .line 28
    iput p1, p0, Lcom/zqhy/sdk/ui/FloatActivity;->startY:I

    return p1
.end method

.method static synthetic access$302(Lcom/zqhy/sdk/ui/FloatActivity;I)I
    .locals 0

    .prologue
    .line 28
    iput p1, p0, Lcom/zqhy/sdk/ui/FloatActivity;->endY:I

    return p1
.end method

.method static synthetic access$400(Lcom/zqhy/sdk/ui/FloatActivity;)Lcom/zqhy/sdk/model/a;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatActivity;->aCache:Lcom/zqhy/sdk/model/a;

    return-object v0
.end method

.method private vibrate()V
    .locals 4

    .prologue
    .line 125
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/zqhy/sdk/ui/FloatActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 129
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 130
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const-string v0, "layout"

    const-string v1, "zq_sdk_cy_float_activity"

    invoke-static {p0, v0, v1}, Lcom/zqhy/sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zqhy/sdk/ui/FloatActivity;->setContentView(I)V

    .line 46
    const-string v0, "id"

    const-string v1, "rbHideRadio"

    invoke-static {p0, v0, v1}, Lcom/zqhy/sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zqhy/sdk/ui/FloatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/zqhy/sdk/ui/FloatActivity;->rb:Landroid/widget/RadioButton;

    .line 47
    const-string v0, "id"

    const-string v1, "tvHideText"

    invoke-static {p0, v0, v1}, Lcom/zqhy/sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zqhy/sdk/ui/FloatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zqhy/sdk/ui/FloatActivity;->tv:Landroid/widget/TextView;

    .line 48
    const-string v0, "id"

    const-string v1, "rlHideLayout"

    invoke-static {p0, v0, v1}, Lcom/zqhy/sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zqhy/sdk/ui/FloatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 51
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/zqhy/sdk/ui/FloatActivity$1;

    invoke-direct {v2, p0, v0}, Lcom/zqhy/sdk/ui/FloatActivity$1;-><init>(Lcom/zqhy/sdk/ui/FloatActivity;Landroid/widget/RelativeLayout;)V

    const-wide/16 v4, 0x190

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 61
    invoke-static {p0}, Lcom/zqhy/sdk/ui/FloatWindowManager;->getInstance(Landroid/content/Context;)Lcom/zqhy/sdk/ui/FloatWindowManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zqhy/sdk/ui/FloatWindowManager;->setDismissActivity(Lcom/zqhy/sdk/ui/FloatActivity;)V

    .line 62
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 134
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 135
    invoke-virtual {p0, v0, v0}, Lcom/zqhy/sdk/ui/FloatActivity;->overridePendingTransition(II)V

    .line 136
    return-void
.end method

.method public setFloatButtonPosition(FF)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 65
    const-string v2, "POSITION"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " --- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " --- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/zqhy/sdk/ui/FloatActivity;->startX:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " --- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/zqhy/sdk/ui/FloatActivity;->endX:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " --- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/zqhy/sdk/ui/FloatActivity;->startY:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " --- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/zqhy/sdk/ui/FloatActivity;->endY:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget v2, p0, Lcom/zqhy/sdk/ui/FloatActivity;->startX:I

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_1

    iget v2, p0, Lcom/zqhy/sdk/ui/FloatActivity;->endX:I

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_1

    iget v2, p0, Lcom/zqhy/sdk/ui/FloatActivity;->startY:I

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_1

    iget v2, p0, Lcom/zqhy/sdk/ui/FloatActivity;->endY:I

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-gtz v2, :cond_1

    .line 67
    iget-object v2, p0, Lcom/zqhy/sdk/ui/FloatActivity;->rb:Landroid/widget/RadioButton;

    invoke-virtual {v2, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 68
    iget-object v2, p0, Lcom/zqhy/sdk/ui/FloatActivity;->tv:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 70
    iget-boolean v1, p0, Lcom/zqhy/sdk/ui/FloatActivity;->isVibrate:Z

    if-nez v1, :cond_0

    .line 71
    iput-boolean v0, p0, Lcom/zqhy/sdk/ui/FloatActivity;->isVibrate:Z

    .line 72
    invoke-direct {p0}, Lcom/zqhy/sdk/ui/FloatActivity;->vibrate()V

    .line 82
    :cond_0
    :goto_0
    return v0

    .line 76
    :cond_1
    iget-object v2, p0, Lcom/zqhy/sdk/ui/FloatActivity;->rb:Landroid/widget/RadioButton;

    invoke-virtual {v2, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 77
    iget-object v2, p0, Lcom/zqhy/sdk/ui/FloatActivity;->tv:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 79
    iget-boolean v0, p0, Lcom/zqhy/sdk/ui/FloatActivity;->isVibrate:Z

    if-eqz v0, :cond_2

    .line 80
    iput-boolean v1, p0, Lcom/zqhy/sdk/ui/FloatActivity;->isVibrate:Z

    :cond_2
    move v0, v1

    .line 82
    goto :goto_0
.end method

.method public showDialog()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 87
    invoke-static {p0}, Lcom/zqhy/sdk/model/a;->a(Landroid/content/Context;)Lcom/zqhy/sdk/model/a;

    move-result-object v0

    iput-object v0, p0, Lcom/zqhy/sdk/ui/FloatActivity;->aCache:Lcom/zqhy/sdk/model/a;

    .line 88
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatActivity;->aCache:Lcom/zqhy/sdk/model/a;

    const-string v1, "HIDE_FLOAT_DIALOG_KEY"

    invoke-virtual {v0, v1}, Lcom/zqhy/sdk/model/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    new-instance v0, Lcom/zqhy/sdk/ui/b;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const-string v2, "layout"

    const-string v3, "zq_sdk_dialog_hide_float"

    invoke-static {p0, v2, v3}, Lcom/zqhy/sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const/high16 v1, 0x43a00000    # 320.0f

    invoke-static {p0, v1}, Lcom/zqhy/sdk/utils/e;->a(Landroid/content/Context;F)I

    move-result v3

    const/4 v4, -0x2

    const/16 v5, 0x11

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/zqhy/sdk/ui/b;-><init>(Landroid/content/Context;Landroid/view/View;III)V

    .line 91
    const-string v1, "id"

    const-string v2, "checkbox"

    invoke-static {p0, v1, v2}, Lcom/zqhy/sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zqhy/sdk/ui/b;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 92
    const-string v2, "id"

    const-string v3, "btnCancel"

    invoke-static {p0, v2, v3}, Lcom/zqhy/sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/zqhy/sdk/ui/b;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/zqhy/sdk/ui/FloatActivity$2;

    invoke-direct {v3, p0, v0}, Lcom/zqhy/sdk/ui/FloatActivity$2;-><init>(Lcom/zqhy/sdk/ui/FloatActivity;Lcom/zqhy/sdk/ui/b;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    const-string v2, "id"

    const-string v3, "btnHide"

    invoke-static {p0, v2, v3}, Lcom/zqhy/sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/zqhy/sdk/ui/b;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/zqhy/sdk/ui/FloatActivity$3;

    invoke-direct {v3, p0, v1, v0}, Lcom/zqhy/sdk/ui/FloatActivity$3;-><init>(Lcom/zqhy/sdk/ui/FloatActivity;Landroid/widget/CheckBox;Lcom/zqhy/sdk/ui/b;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    invoke-virtual {v0, v6}, Lcom/zqhy/sdk/ui/b;->setCanceledOnTouchOutside(Z)V

    .line 112
    invoke-virtual {v0, v6}, Lcom/zqhy/sdk/ui/b;->setCancelable(Z)V

    .line 113
    invoke-virtual {v0}, Lcom/zqhy/sdk/ui/b;->show()V

    .line 114
    invoke-static {p0}, Lcom/zqhy/sdk/ui/FloatWindowManager;->getInstance(Landroid/content/Context;)Lcom/zqhy/sdk/ui/FloatWindowManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/zqhy/sdk/ui/FloatWindowManager;->setCanTouch(Z)V

    .line 119
    :goto_0
    return-void

    .line 116
    :cond_0
    invoke-static {p0}, Lcom/zqhy/sdk/ui/FloatWindowManager;->getInstance(Landroid/content/Context;)Lcom/zqhy/sdk/ui/FloatWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zqhy/sdk/ui/FloatWindowManager;->destroyFloat()V

    .line 117
    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/FloatActivity;->finish()V

    goto :goto_0
.end method
