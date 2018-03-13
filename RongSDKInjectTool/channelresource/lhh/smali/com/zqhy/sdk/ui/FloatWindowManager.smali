.class public Lcom/zqhy/sdk/ui/FloatWindowManager;
.super Ljava/lang/Object;
.source "FloatWindowManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zqhy/sdk/ui/FloatWindowManager$STATE;
    }
.end annotation


# static fields
.field private static final ACTION_GRAY:I = 0x65

.field private static final ACTION_HALF:I = 0x66

.field private static final ACTION_HALF_GRAY:I = 0x67

.field public static final CACH_KEY:Ljava/lang/String; = "FLOATBUTTONCACHEKEY"

.field private static final TAG:Ljava/lang/String; = "FLOATBUTTON"

.field private static final TAG_VALUE:Ljava/lang/String; = "FLOATBUTTON_VALUE"

.field private static instance:Lcom/zqhy/sdk/ui/FloatWindowManager;


# instance fields
.field private final BOTTOM:I

.field private final LEFT:I

.field private final RIGHT:I

.field private final TOP:I

.field private final aCache:Lcom/zqhy/sdk/model/a;

.field private dismissActivity:Lcom/zqhy/sdk/ui/FloatActivity;

.field private grayRunnable:Ljava/lang/Runnable;

.field private halfGrayRunnable:Ljava/lang/Runnable;

.field private halfRunnable:Ljava/lang/Runnable;

.field handler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private isCanTouch:Z

.field private isFloat:Z

.field private isFloatLocal:Z

.field private isTouching:Z

.field private lastX:F

.field private lastY:F

.field private locateSide:I

.field private final mContext:Landroid/content/Context;

.field private mFloatHeight:I

.field private mFloatImage:Landroid/widget/ImageView;

.field private mFloatImageLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mFloatResIdNor:I

.field private mFloatResIdSleepB:I

.field private mFloatResIdSleepL:I

.field private mFloatResIdSleepR:I

.field private mFloatResIdSleepT:I

.field private mFloatWidth:I

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mWindowManager:Landroid/view/WindowManager;

.field private movedTimes:I

.field private norNetIcon:Ljava/lang/String;

.field private positionStr:Ljava/lang/String;

.field private sleepBottomNetIcon:Ljava/lang/String;

.field private sleepLeftNetIcon:Ljava/lang/String;

.field private sleepRightNetIcon:Ljava/lang/String;

.field private sleepTopNetIcon:Ljava/lang/String;

.field private startTime:J

.field private state:Lcom/zqhy/sdk/ui/FloatWindowManager$STATE;

.field private statusBarHeight:I

.field private touchTime:J


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-boolean v1, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->isFloat:Z

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->locateSide:I

    .line 60
    iput v2, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->LEFT:I

    .line 61
    const/4 v0, 0x2

    iput v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->RIGHT:I

    .line 62
    const/4 v0, 0x3

    iput v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->TOP:I

    .line 63
    const/4 v0, 0x4

    iput v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->BOTTOM:I

    .line 64
    iput v1, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->statusBarHeight:I

    .line 77
    iput-boolean v2, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->isFloatLocal:Z

    .line 79
    iput-boolean v2, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->isCanTouch:Z

    .line 80
    iput-boolean v1, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->isTouching:Z

    .line 87
    sget-object v0, Lcom/zqhy/sdk/ui/FloatWindowManager$STATE;->ACTIVE:Lcom/zqhy/sdk/ui/FloatWindowManager$STATE;

    iput-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->state:Lcom/zqhy/sdk/ui/FloatWindowManager$STATE;

    .line 291
    new-instance v0, Lcom/zqhy/sdk/ui/FloatWindowManager$1;

    invoke-direct {v0, p0}, Lcom/zqhy/sdk/ui/FloatWindowManager$1;-><init>(Lcom/zqhy/sdk/ui/FloatWindowManager;)V

    iput-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->grayRunnable:Ljava/lang/Runnable;

    .line 298
    new-instance v0, Lcom/zqhy/sdk/ui/FloatWindowManager$2;

    invoke-direct {v0, p0}, Lcom/zqhy/sdk/ui/FloatWindowManager$2;-><init>(Lcom/zqhy/sdk/ui/FloatWindowManager;)V

    iput-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->halfRunnable:Ljava/lang/Runnable;

    .line 305
    new-instance v0, Lcom/zqhy/sdk/ui/FloatWindowManager$3;

    invoke-direct {v0, p0}, Lcom/zqhy/sdk/ui/FloatWindowManager$3;-><init>(Lcom/zqhy/sdk/ui/FloatWindowManager;)V

    iput-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->halfGrayRunnable:Ljava/lang/Runnable;

    .line 313
    new-instance v0, Lcom/zqhy/sdk/ui/FloatWindowManager$4;

    invoke-direct {v0, p0}, Lcom/zqhy/sdk/ui/FloatWindowManager$4;-><init>(Lcom/zqhy/sdk/ui/FloatWindowManager;)V

    iput-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->handler:Landroid/os/Handler;

    .line 400
    iput v3, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->lastX:F

    .line 401
    iput v3, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->lastY:F

    .line 403
    iput-wide v4, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->touchTime:J

    .line 404
    iput-wide v4, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->startTime:J

    .line 406
    iput v1, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->movedTimes:I

    .line 110
    iput-object p1, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mContext:Landroid/content/Context;

    .line 112
    invoke-static {p1}, Lcom/zqhy/sdk/model/a;->a(Landroid/content/Context;)Lcom/zqhy/sdk/model/a;

    move-result-object v0

    iput-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->aCache:Lcom/zqhy/sdk/model/a;

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 116
    if-lez v0, :cond_0

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->statusBarHeight:I

    .line 121
    :cond_0
    invoke-direct {p0}, Lcom/zqhy/sdk/ui/FloatWindowManager;->initView()V

    .line 122
    return-void
.end method

.method static synthetic access$000(Lcom/zqhy/sdk/ui/FloatWindowManager;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/zqhy/sdk/ui/FloatWindowManager;->freshGray()V

    return-void
.end method

.method static synthetic access$100(Lcom/zqhy/sdk/ui/FloatWindowManager;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/zqhy/sdk/ui/FloatWindowManager;->freshHalf()V

    return-void
.end method

.method static synthetic access$200(Lcom/zqhy/sdk/ui/FloatWindowManager;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/zqhy/sdk/ui/FloatWindowManager;->freshHalfGray()V

    return-void
.end method

.method static synthetic access$300(Lcom/zqhy/sdk/ui/FloatWindowManager;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->grayRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/zqhy/sdk/ui/FloatWindowManager;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->halfRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/zqhy/sdk/ui/FloatWindowManager;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->halfGrayRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private activeNormal()V
    .locals 3

    .prologue
    .line 342
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->norNetIcon:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->isFloatLocal:Z

    if-nez v0, :cond_1

    .line 344
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iget-object v1, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->norNetIcon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 348
    :goto_0
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatImageLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 349
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatImageLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 351
    :cond_0
    return-void

    .line 346
    :cond_1
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatImage:Landroid/widget/ImageView;

    iget v1, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatResIdNor:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private addFloat2Window()V
    .locals 3

    .prologue
    .line 261
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->isFloat:Z

    if-nez v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatImageLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 263
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->isFloat:Z

    .line 265
    :cond_0
    return-void
.end method

.method private caculateSide()I
    .locals 9

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 496
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatImageLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v7, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 497
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatImageLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v8, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 499
    iget v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mScreenWidth:I

    sub-int/2addr v0, v7

    if-ge v7, v0, :cond_1

    move v0, v1

    .line 504
    :goto_0
    iget v6, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mScreenHeight:I

    sub-int/2addr v6, v8

    if-ge v8, v6, :cond_2

    move v6, v1

    .line 509
    :goto_1
    if-eqz v0, :cond_4

    if-eqz v6, :cond_4

    .line 510
    if-ge v7, v8, :cond_3

    .line 538
    :cond_0
    :goto_2
    return v1

    :cond_1
    move v0, v2

    .line 502
    goto :goto_0

    :cond_2
    move v6, v2

    .line 507
    goto :goto_1

    :cond_3
    move v1, v3

    .line 513
    goto :goto_2

    .line 516
    :cond_4
    if-eqz v0, :cond_5

    if-nez v6, :cond_5

    .line 517
    iget v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mScreenHeight:I

    sub-int/2addr v0, v8

    if-lt v7, v0, :cond_0

    move v1, v4

    .line 520
    goto :goto_2

    .line 523
    :cond_5
    if-nez v0, :cond_7

    if-eqz v6, :cond_7

    .line 524
    iget v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mScreenWidth:I

    sub-int/2addr v0, v7

    if-ge v0, v8, :cond_6

    move v1, v5

    .line 525
    goto :goto_2

    :cond_6
    move v1, v3

    .line 527
    goto :goto_2

    .line 530
    :cond_7
    if-nez v0, :cond_9

    if-nez v6, :cond_9

    .line 531
    iget v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mScreenWidth:I

    sub-int/2addr v0, v7

    iget v1, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mScreenHeight:I

    sub-int/2addr v1, v8

    if-ge v0, v1, :cond_8

    move v1, v5

    .line 532
    goto :goto_2

    :cond_8
    move v1, v4

    .line 534
    goto :goto_2

    :cond_9
    move v1, v2

    .line 538
    goto :goto_2
.end method

.method private createFloatImageView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->isCanTouch:Z

    .line 162
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatImage:Landroid/widget/ImageView;

    .line 163
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 164
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 166
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 168
    invoke-direct {p0}, Lcom/zqhy/sdk/ui/FloatWindowManager;->setFloatImageLayoutParam()V

    .line 169
    return-void
.end method

.method private fresh(FF)V
    .locals 3

    .prologue
    .line 542
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatImageLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v1, v1

    add-float/2addr v1, p1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 544
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatImageLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v1, v1

    add-float/2addr v1, p2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 545
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatImageLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 547
    :cond_0
    return-void
.end method

.method private freshGray()V
    .locals 3

    .prologue
    .line 333
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatImageLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x3e99999a    # 0.3f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 335
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatImageLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 336
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->handler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 337
    sget-object v0, Lcom/zqhy/sdk/ui/FloatWindowManager$STATE;->FULL_GRAY:Lcom/zqhy/sdk/ui/FloatWindowManager$STATE;

    iput-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->state:Lcom/zqhy/sdk/ui/FloatWindowManager$STATE;

    .line 339
    :cond_0
    return-void
.end method

.method private freshHalf()V
    .locals 3

    .prologue
    .line 354
    iget v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->locateSide:I

    packed-switch v0, :pswitch_data_0

    .line 384
    :goto_0
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatImageLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 386
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatImageLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 387
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->handler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 388
    sget-object v0, Lcom/zqhy/sdk/ui/FloatWindowManager$STATE;->HALF:Lcom/zqhy/sdk/ui/FloatWindowManager$STATE;

    iput-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->state:Lcom/zqhy/sdk/ui/FloatWindowManager$STATE;

    .line 390
    :cond_0
    return-void

    .line 356
    :pswitch_0
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->sleepLeftNetIcon:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->isFloatLocal:Z

    if-nez v0, :cond_1

    .line 357
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iget-object v1, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->sleepLeftNetIcon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 359
    :cond_1
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatImage:Landroid/widget/ImageView;

    iget v1, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatResIdSleepL:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 363
    :pswitch_1
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->sleepRightNetIcon:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->isFloatLocal:Z

    if-nez v0, :cond_2

    .line 364
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iget-object v1, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->sleepRightNetIcon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 366
    :cond_2
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatImage:Landroid/widget/ImageView;

    iget v1, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatResIdSleepR:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 370
    :pswitch_2
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->sleepTopNetIcon:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->isFloatLocal:Z

    if-nez v0, :cond_3

    .line 371
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iget-object v1, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->sleepTopNetIcon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 373
    :cond_3
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatImage:Landroid/widget/ImageView;

    iget v1, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatResIdSleepT:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 377
    :pswitch_3
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->sleepBottomNetIcon:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->isFloatLocal:Z

    if-nez v0, :cond_4

    .line 378
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iget-object v1, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->sleepBottomNetIcon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 380
    :cond_4
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatImage:Landroid/widget/ImageView;

    iget v1, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatResIdSleepB:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 354
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private freshHalfGray()V
    .locals 3

    .prologue
    .line 393
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatImageLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x3e99999a    # 0.3f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 395
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatImageLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 396
    sget-object v0, Lcom/zqhy/sdk/ui/FloatWindowManager$STATE;->HALF_GRAY:Lcom/zqhy/sdk/ui/FloatWindowManager$STATE;

    iput-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->state:Lcom/zqhy/sdk/ui/FloatWindowManager$STATE;

    .line 398
    :cond_0
    return-void
.end method

.method private freshLocate()V
    .locals 4

    .prologue
    const/16 v1, 0xa

    .line 461
    invoke-direct {p0}, Lcom/zqhy/sdk/ui/FloatWindowManager;->removeAllMessage()V

    .line 462
    invoke-direct {p0}, Lcom/zqhy/sdk/ui/FloatWindowManager;->caculateSide()I

    move-result v0

    .line 465
    iput v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->locateSide:I

    .line 466
    packed-switch v0, :pswitch_data_0

    .line 481
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "caculateSide error"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 482
    :catch_0
    move-exception v0

    .line 483
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 487
    :goto_0
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatImageLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 489
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->handler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 490
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->aCache:Lcom/zqhy/sdk/model/a;

    const-string v1, "FLOATBUTTONCACHEKEY"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatImageLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatImageLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/zqhy/sdk/model/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    :cond_0
    return-void

    .line 468
    :pswitch_0
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatImageLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_0

    .line 471
    :pswitch_1
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatImageLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mScreenWidth:I

    iget v2, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatWidth:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0xa

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_0

    .line 474
    :pswitch_2
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatImageLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0

    .line 477
    :pswitch_3
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatImageLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mScreenHeight:I

    iget v2, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatHeight:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0xa

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0

    .line 466
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private freshNew(FF)V
    .locals 3

    .prologue
    .line 550
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatImageLayoutParams:Landroid/view/WindowManager$LayoutParams;

    float-to-int v1, p1

    iget v2, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatWidth:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 552
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatImageLayoutParams:Landroid/view/WindowManager$LayoutParams;

    float-to-int v1, p2

    iget v2, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatHeight:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 553
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatImageLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 555
    :cond_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/zqhy/sdk/ui/FloatWindowManager;
    .locals 2

    .prologue
    .line 127
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 130
    :cond_0
    sget-object v0, Lcom/zqhy/sdk/ui/FloatWindowManager;->instance:Lcom/zqhy/sdk/ui/FloatWindowManager;

    if-nez v0, :cond_2

    .line 131
    const-class v1, Lcom/zqhy/sdk/ui/FloatWindowManager;

    monitor-enter v1

    .line 132
    :try_start_0
    sget-object v0, Lcom/zqhy/sdk/ui/FloatWindowManager;->instance:Lcom/zqhy/sdk/ui/FloatWindowManager;

    if-nez v0, :cond_1

    .line 133
    new-instance v0, Lcom/zqhy/sdk/ui/FloatWindowManager;

    invoke-direct {v0, p0}, Lcom/zqhy/sdk/ui/FloatWindowManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/zqhy/sdk/ui/FloatWindowManager;->instance:Lcom/zqhy/sdk/ui/FloatWindowManager;

    .line 135
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    :cond_2
    sget-object v0, Lcom/zqhy/sdk/ui/FloatWindowManager;->instance:Lcom/zqhy/sdk/ui/FloatWindowManager;

    return-object v0

    .line 135
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private initHistoryPosition(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 211
    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 212
    iget-object v1, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatImageLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 213
    iget-object v1, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatImageLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 214
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    const/high16 v2, 0x42200000    # 40.0f

    .line 143
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mWindowManager:Landroid/view/WindowManager;

    .line 144
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 145
    iget-object v1, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 146
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/zqhy/sdk/utils/k;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mScreenWidth:I

    .line 147
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/zqhy/sdk/utils/k;->b(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mScreenHeight:I

    .line 149
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/zqhy/sdk/utils/e;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatWidth:I

    .line 150
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/zqhy/sdk/utils/e;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatHeight:I

    .line 155
    invoke-direct {p0}, Lcom/zqhy/sdk/ui/FloatWindowManager;->createFloatImageView()V

    .line 156
    return-void
.end method

.method private removeAllMessage()V
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->handler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 284
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->handler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 285
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->handler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 286
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->grayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 287
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->halfRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 288
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->halfGrayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 289
    return-void
.end method

.method private setFloatImageLayoutParam()V
    .locals 3

    .prologue
    const/16 v2, 0x7d2

    .line 174
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatImageLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 178
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    .line 180
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-le v0, v1, :cond_1

    .line 181
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatImageLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 189
    :goto_0
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatImageLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 191
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatImageLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x50128

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 192
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatImageLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x40001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 195
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatImageLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatWidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 196
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatImageLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 197
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatImageLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 199
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->aCache:Lcom/zqhy/sdk/model/a;

    const-string v1, "FLOATBUTTONCACHEKEY"

    invoke-virtual {v0, v1}, Lcom/zqhy/sdk/model/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->positionStr:Ljava/lang/String;

    .line 200
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->positionStr:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->positionStr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 201
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "10#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mScreenHeight:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatHeight:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->positionStr:Ljava/lang/String;

    .line 202
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->aCache:Lcom/zqhy/sdk/model/a;

    const-string v1, "FLOATBUTTONCACHEKEY"

    iget-object v2, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->positionStr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/zqhy/sdk/model/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatImageLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0xa

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 204
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatImageLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mScreenHeight:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatHeight:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 208
    :goto_1
    return-void

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatImageLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    goto/16 :goto_0

    .line 186
    :cond_2
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatImageLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    goto/16 :goto_0

    .line 206
    :cond_3
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->positionStr:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/zqhy/sdk/ui/FloatWindowManager;->initHistoryPosition(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public createFloat()V
    .locals 7

    .prologue
    .line 220
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatImage:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 221
    invoke-direct {p0}, Lcom/zqhy/sdk/ui/FloatWindowManager;->createFloatImageView()V

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "drawable"

    const-string v2, "ic_zqsdk_cy_icon_normal"

    invoke-static {v0, v1, v2}, Lcom/zqhy/sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "drawable"

    const-string v3, "ic_zqsdk_cy_icon_left"

    invoke-static {v0, v2, v3}, Lcom/zqhy/sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mContext:Landroid/content/Context;

    const-string v3, "drawable"

    const-string v4, "ic_zqsdk_cy_icon_right"

    .line 224
    invoke-static {v0, v3, v4}, Lcom/zqhy/sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mContext:Landroid/content/Context;

    const-string v4, "drawable"

    const-string v5, "ic_zqsdk_cy_icon_top"

    invoke-static {v0, v4, v5}, Lcom/zqhy/sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mContext:Landroid/content/Context;

    const-string v5, "drawable"

    const-string v6, "ic_zqsdk_cy_icon_bottom"

    .line 225
    invoke-static {v0, v5, v6}, Lcom/zqhy/sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    move-object v0, p0

    .line 223
    invoke-virtual/range {v0 .. v5}, Lcom/zqhy/sdk/ui/FloatWindowManager;->setIcons(IIIII)V

    .line 227
    invoke-direct {p0}, Lcom/zqhy/sdk/ui/FloatWindowManager;->addFloat2Window()V

    .line 228
    return-void
.end method

.method public destroyFloat()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 580
    invoke-direct {p0}, Lcom/zqhy/sdk/ui/FloatWindowManager;->removeAllMessage()V

    .line 581
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->dismissActivity:Lcom/zqhy/sdk/ui/FloatActivity;

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->dismissActivity:Lcom/zqhy/sdk/ui/FloatActivity;

    invoke-virtual {v0}, Lcom/zqhy/sdk/ui/FloatActivity;->finish()V

    .line 583
    iput-object v2, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->dismissActivity:Lcom/zqhy/sdk/ui/FloatActivity;

    .line 585
    :cond_0
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->isFloat:Z

    if-eqz v0, :cond_1

    .line 586
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatImage:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 587
    iput-object v2, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatImage:Landroid/widget/ImageView;

    .line 588
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->isFloat:Z

    .line 590
    :cond_1
    return-void
.end method

.method public hideFloat()V
    .locals 2

    .prologue
    .line 570
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 573
    :cond_0
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->dismissActivity:Lcom/zqhy/sdk/ui/FloatActivity;

    if-eqz v0, :cond_1

    .line 574
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->dismissActivity:Lcom/zqhy/sdk/ui/FloatActivity;

    invoke-virtual {v0}, Lcom/zqhy/sdk/ui/FloatActivity;->finish()V

    .line 575
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->dismissActivity:Lcom/zqhy/sdk/ui/FloatActivity;

    .line 577
    :cond_1
    return-void
.end method

.method public isFloat()Z
    .locals 1

    .prologue
    .line 598
    iget-boolean v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->isFloat:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 269
    iget-wide v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->touchTime:J

    const-wide/16 v2, 0xb4

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->state:Lcom/zqhy/sdk/ui/FloatWindowManager$STATE;

    sget-object v1, Lcom/zqhy/sdk/ui/FloatWindowManager$STATE;->ACTIVE:Lcom/zqhy/sdk/ui/FloatWindowManager$STATE;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->movedTimes:I

    const/16 v1, 0x19

    if-ge v0, v1, :cond_0

    .line 270
    invoke-static {}, Lcom/zqhy/sdk/platform/LehihiGameSDKApi;->getInstance()Lcom/zqhy/sdk/platform/LehihiGameSDKApi;

    move-result-object v0

    iget-object v1, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/zqhy/sdk/platform/LehihiGameSDKApi;->goToUserCenter(Landroid/content/Context;)V

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->state:Lcom/zqhy/sdk/ui/FloatWindowManager$STATE;

    sget-object v1, Lcom/zqhy/sdk/ui/FloatWindowManager$STATE;->ACTIVE:Lcom/zqhy/sdk/ui/FloatWindowManager$STATE;

    if-eq v0, v1, :cond_1

    .line 273
    sget-object v0, Lcom/zqhy/sdk/ui/FloatWindowManager$STATE;->ACTIVE:Lcom/zqhy/sdk/ui/FloatWindowManager$STATE;

    iput-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->state:Lcom/zqhy/sdk/ui/FloatWindowManager$STATE;

    .line 275
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->movedTimes:I

    .line 276
    iput-wide v4, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->touchTime:J

    .line 277
    iput-wide v4, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->startTime:J

    .line 278
    invoke-direct {p0}, Lcom/zqhy/sdk/ui/FloatWindowManager;->freshLocate()V

    .line 279
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 410
    iget-boolean v2, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->isCanTouch:Z

    if-nez v2, :cond_0

    .line 457
    :goto_0
    return v0

    .line 413
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_1
    move v0, v1

    .line 457
    goto :goto_0

    .line 415
    :pswitch_0
    iput-boolean v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->isTouching:Z

    .line 416
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mContext:Landroid/content/Context;

    const-class v3, Lcom/zqhy/sdk/ui/FloatActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 417
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 418
    iget-object v2, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 419
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->startTime:J

    .line 420
    invoke-direct {p0}, Lcom/zqhy/sdk/ui/FloatWindowManager;->removeAllMessage()V

    .line 421
    invoke-direct {p0}, Lcom/zqhy/sdk/ui/FloatWindowManager;->activeNormal()V

    .line 422
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->lastX:F

    .line 423
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->lastY:F

    goto :goto_1

    .line 427
    :pswitch_1
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->dismissActivity:Lcom/zqhy/sdk/ui/FloatActivity;

    if-eqz v0, :cond_1

    .line 428
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->dismissActivity:Lcom/zqhy/sdk/ui/FloatActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/zqhy/sdk/ui/FloatActivity;->setFloatButtonPosition(FF)Z

    .line 430
    :cond_1
    iget v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->movedTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->movedTimes:I

    .line 433
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->lastX:F

    .line 434
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->lastY:F

    .line 436
    iget v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->lastX:F

    iget v2, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->lastY:F

    invoke-direct {p0, v0, v2}, Lcom/zqhy/sdk/ui/FloatWindowManager;->freshNew(FF)V

    goto :goto_1

    .line 441
    :pswitch_2
    iput-boolean v1, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->isTouching:Z

    .line 442
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->dismissActivity:Lcom/zqhy/sdk/ui/FloatActivity;

    if-eqz v0, :cond_2

    .line 443
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->dismissActivity:Lcom/zqhy/sdk/ui/FloatActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/zqhy/sdk/ui/FloatActivity;->setFloatButtonPosition(FF)Z

    move-result v0

    .line 444
    if-eqz v0, :cond_3

    .line 445
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->dismissActivity:Lcom/zqhy/sdk/ui/FloatActivity;

    invoke-virtual {v0}, Lcom/zqhy/sdk/ui/FloatActivity;->showDialog()V

    .line 452
    :cond_2
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 453
    iget-wide v4, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->startTime:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->touchTime:J

    .line 454
    invoke-direct {p0}, Lcom/zqhy/sdk/ui/FloatWindowManager;->freshLocate()V

    goto/16 :goto_1

    .line 447
    :cond_3
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->dismissActivity:Lcom/zqhy/sdk/ui/FloatActivity;

    invoke-virtual {v0}, Lcom/zqhy/sdk/ui/FloatActivity;->finish()V

    .line 448
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->dismissActivity:Lcom/zqhy/sdk/ui/FloatActivity;

    goto :goto_2

    .line 413
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setCanTouch(Z)V
    .locals 0

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->isCanTouch:Z

    .line 84
    return-void
.end method

.method public setDismissActivity(Lcom/zqhy/sdk/ui/FloatActivity;)V
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->isTouching:Z

    if-eqz v0, :cond_0

    .line 93
    iput-object p1, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->dismissActivity:Lcom/zqhy/sdk/ui/FloatActivity;

    .line 98
    :goto_0
    return-void

    .line 95
    :cond_0
    invoke-virtual {p1}, Lcom/zqhy/sdk/ui/FloatActivity;->finish()V

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->dismissActivity:Lcom/zqhy/sdk/ui/FloatActivity;

    goto :goto_0
.end method

.method public setFloatLocal(Z)V
    .locals 0

    .prologue
    .line 602
    iput-boolean p1, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->isFloatLocal:Z

    .line 603
    return-void
.end method

.method public setIcons(IIIII)V
    .locals 1

    .prologue
    .line 233
    iput p1, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatResIdNor:I

    .line 234
    iput p2, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatResIdSleepL:I

    .line 235
    iput p3, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatResIdSleepR:I

    .line 236
    iput p4, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatResIdSleepT:I

    .line 237
    iput p5, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatResIdSleepB:I

    .line 238
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 241
    return-void
.end method

.method public setNetworkIcons(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 246
    iput-object p1, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->norNetIcon:Ljava/lang/String;

    .line 247
    iput-object p2, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->sleepLeftNetIcon:Ljava/lang/String;

    .line 248
    iput-object p3, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->sleepRightNetIcon:Ljava/lang/String;

    .line 249
    iput-object p4, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->sleepTopNetIcon:Ljava/lang/String;

    .line 250
    iput-object p5, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->sleepBottomNetIcon:Ljava/lang/String;

    .line 251
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->isFloatLocal:Z

    if-nez v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 256
    :cond_0
    return-void
.end method

.method public setStatusBarHeight(I)V
    .locals 0

    .prologue
    .line 594
    iput p1, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->statusBarHeight:I

    .line 595
    return-void
.end method

.method public showFloat()V
    .locals 2

    .prologue
    .line 560
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->isFloat:Z

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager;->mFloatImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 562
    invoke-direct {p0}, Lcom/zqhy/sdk/ui/FloatWindowManager;->activeNormal()V

    .line 563
    invoke-direct {p0}, Lcom/zqhy/sdk/ui/FloatWindowManager;->freshLocate()V

    .line 565
    :cond_0
    return-void
.end method
