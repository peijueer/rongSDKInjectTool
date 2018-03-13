.class public Lcom/zqhy/sdk/c/a;
.super Ljava/lang/Object;
.source "GlobalScreenShot.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/WindowManager;

.field private c:Landroid/view/WindowManager$LayoutParams;

.field private d:Landroid/view/Display;

.field private e:Landroid/util/DisplayMetrics;

.field private f:Landroid/graphics/Bitmap;

.field private g:Landroid/view/View;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/animation/AnimatorSet;

.field private l:F

.field private m:F

.field private n:Landroid/media/MediaActionSound;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .prologue
    const/4 v1, -0x1

    const/4 v3, 0x0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 101
    iput-object p1, p0, Lcom/zqhy/sdk/c/a;->a:Landroid/content/Context;

    .line 102
    const-string v0, "layout_inflater"

    .line 103
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 106
    const-string v2, "layout"

    const-string v4, "zq_sdk_global_screenshot"

    invoke-static {p1, v2, v4}, Lcom/zqhy/sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zqhy/sdk/c/a;->g:Landroid/view/View;

    .line 107
    iget-object v0, p0, Lcom/zqhy/sdk/c/a;->g:Landroid/view/View;

    const-string v2, "id"

    const-string v4, "global_screenshot_background"

    invoke-static {p1, v2, v4}, Lcom/zqhy/sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zqhy/sdk/c/a;->h:Landroid/widget/ImageView;

    .line 108
    iget-object v0, p0, Lcom/zqhy/sdk/c/a;->g:Landroid/view/View;

    const-string v2, "id"

    const-string v4, "global_screenshot"

    invoke-static {p1, v2, v4}, Lcom/zqhy/sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zqhy/sdk/c/a;->i:Landroid/widget/ImageView;

    .line 109
    iget-object v0, p0, Lcom/zqhy/sdk/c/a;->g:Landroid/view/View;

    const-string v2, "id"

    const-string v4, "global_screenshot_flash"

    invoke-static {p1, v2, v4}, Lcom/zqhy/sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zqhy/sdk/c/a;->j:Landroid/widget/ImageView;

    .line 110
    iget-object v0, p0, Lcom/zqhy/sdk/c/a;->g:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 111
    iget-object v0, p0, Lcom/zqhy/sdk/c/a;->g:Landroid/view/View;

    new-instance v2, Lcom/zqhy/sdk/c/a$1;

    invoke-direct {v2, p0}, Lcom/zqhy/sdk/c/a$1;-><init>(Lcom/zqhy/sdk/c/a;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 120
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v5, 0x7d3

    const v6, 0x1080500

    const/4 v7, -0x3

    move v2, v1

    move v4, v3

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iput-object v0, p0, Lcom/zqhy/sdk/c/a;->c:Landroid/view/WindowManager$LayoutParams;

    .line 128
    iget-object v0, p0, Lcom/zqhy/sdk/c/a;->c:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "ScreenshotAnimation"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 129
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/zqhy/sdk/c/a;->b:Landroid/view/WindowManager;

    .line 131
    iget-object v0, p0, Lcom/zqhy/sdk/c/a;->b:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/zqhy/sdk/c/a;->d:Landroid/view/Display;

    .line 132
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/zqhy/sdk/c/a;->e:Landroid/util/DisplayMetrics;

    .line 133
    iget-object v0, p0, Lcom/zqhy/sdk/c/a;->d:Landroid/view/Display;

    iget-object v1, p0, Lcom/zqhy/sdk/c/a;->e:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 136
    iget-object v0, p0, Lcom/zqhy/sdk/c/a;->a:Landroid/content/Context;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-direct {p0, v0, v1}, Lcom/zqhy/sdk/c/a;->a(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/zqhy/sdk/c/a;->l:F

    .line 137
    iget v0, p0, Lcom/zqhy/sdk/c/a;->l:F

    iget-object v1, p0, Lcom/zqhy/sdk/c/a;->e:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/zqhy/sdk/c/a;->m:F

    .line 140
    new-instance v0, Landroid/media/MediaActionSound;

    invoke-direct {v0}, Landroid/media/MediaActionSound;-><init>()V

    iput-object v0, p0, Lcom/zqhy/sdk/c/a;->n:Landroid/media/MediaActionSound;

    .line 141
    iget-object v0, p0, Lcom/zqhy/sdk/c/a;->n:Landroid/media/MediaActionSound;

    invoke-virtual {v0, v3}, Landroid/media/MediaActionSound;->load(I)V

    .line 142
    return-void
.end method

.method private a(Landroid/content/Context;F)I
    .locals 2

    .prologue
    .line 429
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 430
    mul-float/2addr v0, p2

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private a()Landroid/animation/ValueAnimator;
    .locals 6

    .prologue
    .line 214
    .line 217
    new-instance v0, Lcom/zqhy/sdk/c/a$6;

    invoke-direct {v0, p0}, Lcom/zqhy/sdk/c/a$6;-><init>(Lcom/zqhy/sdk/c/a;)V

    .line 227
    new-instance v1, Lcom/zqhy/sdk/c/a$7;

    invoke-direct {v1, p0}, Lcom/zqhy/sdk/c/a$7;-><init>(Lcom/zqhy/sdk/c/a;)V

    .line 237
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 238
    const-wide/16 v4, 0x1ae

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 239
    new-instance v3, Lcom/zqhy/sdk/c/a$8;

    invoke-direct {v3, p0}, Lcom/zqhy/sdk/c/a$8;-><init>(Lcom/zqhy/sdk/c/a;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 259
    new-instance v3, Lcom/zqhy/sdk/c/a$9;

    invoke-direct {v3, p0, v1, v0}, Lcom/zqhy/sdk/c/a$9;-><init>(Lcom/zqhy/sdk/c/a;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 273
    return-object v2

    .line 237
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private a(IIZZ)Landroid/animation/ValueAnimator;
    .locals 7

    .prologue
    const v6, 0x3ee66666    # 0.45f

    const/high16 v5, 0x40000000    # 2.0f

    .line 278
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 279
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 280
    new-instance v1, Lcom/zqhy/sdk/c/a$10;

    invoke-direct {v1, p0}, Lcom/zqhy/sdk/c/a$10;-><init>(Lcom/zqhy/sdk/c/a;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 289
    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 291
    :cond_0
    const-wide/16 v2, 0x140

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 292
    new-instance v1, Lcom/zqhy/sdk/c/a$11;

    invoke-direct {v1, p0}, Lcom/zqhy/sdk/c/a$11;-><init>(Lcom/zqhy/sdk/c/a;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 345
    :goto_0
    return-object v0

    .line 308
    :cond_1
    new-instance v1, Lcom/zqhy/sdk/c/a$2;

    invoke-direct {v1, p0}, Lcom/zqhy/sdk/c/a$2;-><init>(Lcom/zqhy/sdk/c/a;)V

    .line 320
    int-to-float v2, p1

    iget v3, p0, Lcom/zqhy/sdk/c/a;->l:F

    mul-float/2addr v3, v5

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    .line 321
    int-to-float v3, p2

    iget v4, p0, Lcom/zqhy/sdk/c/a;->l:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    .line 323
    new-instance v4, Landroid/graphics/PointF;

    neg-float v5, v2

    mul-float/2addr v2, v6

    add-float/2addr v2, v5

    neg-float v5, v3

    mul-float/2addr v3, v6

    add-float/2addr v3, v5

    invoke-direct {v4, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 328
    const-wide/16 v2, 0x1ae

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 329
    new-instance v2, Lcom/zqhy/sdk/c/a$3;

    invoke-direct {v2, p0, v1, v4}, Lcom/zqhy/sdk/c/a$3;-><init>(Lcom/zqhy/sdk/c/a;Landroid/view/animation/Interpolator;Landroid/graphics/PointF;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_0

    .line 278
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic a(Lcom/zqhy/sdk/c/a;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/zqhy/sdk/c/a;->f:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic a(Lcom/zqhy/sdk/c/a;)Landroid/view/View;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/zqhy/sdk/c/a;->g:Landroid/view/View;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 349
    const-string v0, "\u622a\u56fe\u5931\u8d25"

    invoke-static {v0}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    .line 350
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 5

    .prologue
    .line 353
    invoke-static {}, Lcom/zqhy/sdk/model/b;->a()Lcom/zqhy/sdk/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zqhy/sdk/model/b;->f()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 354
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 356
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 357
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 360
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 361
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Screenshot_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 362
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 363
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 365
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 366
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 368
    :cond_1
    iget-object v0, p0, Lcom/zqhy/sdk/c/a;->f:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0, v2}, Lcom/zqhy/sdk/c/a;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_2

    .line 371
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    invoke-static {v0, v2, v1, v4}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 377
    :goto_0
    :try_start_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u622a\u56fe\u5df2\u4fdd\u5b58\u5230"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u622a\u56fe\u5df2\u4fdd\u5b58\u5230"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u622a\u56fe\u5df2\u4fdd\u5b58\u5230"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 385
    :cond_2
    :goto_1
    return-void

    .line 373
    :catch_0
    move-exception v0

    .line 374
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 382
    :catch_1
    move-exception v0

    .line 383
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private a(Landroid/content/Context;Ljava/lang/Runnable;IIZZ)V
    .locals 5

    .prologue
    .line 173
    iget-object v0, p0, Lcom/zqhy/sdk/c/a;->i:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/zqhy/sdk/c/a;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 174
    iget-object v0, p0, Lcom/zqhy/sdk/c/a;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 177
    iget-object v0, p0, Lcom/zqhy/sdk/c/a;->k:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/zqhy/sdk/c/a;->k:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 179
    iget-object v0, p0, Lcom/zqhy/sdk/c/a;->k:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/zqhy/sdk/c/a;->b:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/zqhy/sdk/c/a;->g:Landroid/view/View;

    iget-object v2, p0, Lcom/zqhy/sdk/c/a;->c:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    invoke-direct {p0}, Lcom/zqhy/sdk/c/a;->a()Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 184
    invoke-direct {p0, p3, p4, p5, p6}, Lcom/zqhy/sdk/c/a;->a(IIZZ)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 186
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/zqhy/sdk/c/a;->k:Landroid/animation/AnimatorSet;

    .line 187
    iget-object v2, p0, Lcom/zqhy/sdk/c/a;->k:Landroid/animation/AnimatorSet;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 188
    iget-object v0, p0, Lcom/zqhy/sdk/c/a;->k:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/zqhy/sdk/c/a$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/zqhy/sdk/c/a$4;-><init>(Lcom/zqhy/sdk/c/a;Landroid/content/Context;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 200
    iget-object v0, p0, Lcom/zqhy/sdk/c/a;->g:Landroid/view/View;

    new-instance v1, Lcom/zqhy/sdk/c/a$5;

    invoke-direct {v1, p0}, Lcom/zqhy/sdk/c/a$5;-><init>(Lcom/zqhy/sdk/c/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 211
    return-void
.end method

.method static synthetic a(Lcom/zqhy/sdk/c/a;Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/zqhy/sdk/c/a;->a(Landroid/content/Context;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic b(Lcom/zqhy/sdk/c/a;)Landroid/view/WindowManager;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/zqhy/sdk/c/a;->b:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic c(Lcom/zqhy/sdk/c/a;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/zqhy/sdk/c/a;->i:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic d(Lcom/zqhy/sdk/c/a;)Landroid/media/MediaActionSound;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/zqhy/sdk/c/a;->n:Landroid/media/MediaActionSound;

    return-object v0
.end method

.method static synthetic e(Lcom/zqhy/sdk/c/a;)Landroid/animation/AnimatorSet;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/zqhy/sdk/c/a;->k:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic f(Lcom/zqhy/sdk/c/a;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/zqhy/sdk/c/a;->h:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic g(Lcom/zqhy/sdk/c/a;)F
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/zqhy/sdk/c/a;->m:F

    return v0
.end method

.method static synthetic h(Lcom/zqhy/sdk/c/a;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/zqhy/sdk/c/a;->j:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/view/View;Ljava/lang/Runnable;ZZ)V
    .locals 7

    .prologue
    .line 150
    invoke-static {p2}, Lcom/zqhy/sdk/c/b;->a(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/zqhy/sdk/c/a;->f:Landroid/graphics/Bitmap;

    .line 151
    iget-object v0, p0, Lcom/zqhy/sdk/c/a;->f:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/zqhy/sdk/c/a;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/zqhy/sdk/c/a;->a(Landroid/content/Context;)V

    .line 153
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 164
    :goto_0
    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/zqhy/sdk/c/a;->f:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 159
    iget-object v0, p0, Lcom/zqhy/sdk/c/a;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 162
    iget-object v0, p0, Lcom/zqhy/sdk/c/a;->e:Landroid/util/DisplayMetrics;

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v0, p0, Lcom/zqhy/sdk/c/a;->e:Landroid/util/DisplayMetrics;

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/zqhy/sdk/c/a;->a(Landroid/content/Context;Ljava/lang/Runnable;IIZZ)V

    goto :goto_0
.end method

.method public a(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 404
    .line 406
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 407
    if-eqz v0, :cond_0

    .line 408
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x5a

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 409
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 410
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 412
    :cond_0
    const/4 v0, 0x1

    .line 418
    :goto_0
    return v0

    .line 413
    :catch_0
    move-exception v0

    .line 414
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 418
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 415
    :catch_1
    move-exception v0

    .line 416
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
