.class public Lcom/arcsoft/hpay100/utils/t;
.super Ljava/lang/Object;


# static fields
.field static final a:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x20

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/arcsoft/hpay100/utils/t;->a:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x50s
        0x52s
        0x53s
        0x54s
        0x55s
        0x57s
        0x58s
        0x59s
        0x5as
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()I
    .locals 2

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    const-string v1, "yyyyMMdd"

    invoke-static {v1, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;I)I
    .locals 12

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v5, v0, [C

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v1, v0, v5, v1}, Ljava/lang/String;->getChars(II[CI)V

    const-wide/16 v2, 0x0

    move v0, v1

    :goto_0
    array-length v4, v5

    if-lt v0, v4, :cond_0

    long-to-int v0, v2

    return v0

    :cond_0
    move v4, v1

    :goto_1
    sget-object v6, Lcom/arcsoft/hpay100/utils/t;->a:[C

    array-length v6, v6

    if-lt v4, v6, :cond_1

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v6, Lcom/arcsoft/hpay100/utils/t;->a:[C

    aget-char v6, v6, v4

    aget-char v7, v5, v0

    if-ne v6, v7, :cond_2

    long-to-double v2, v2

    int-to-double v6, v4

    int-to-double v8, p1

    array-length v4, v5

    sub-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x1

    int-to-double v10, v4

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v2, v6

    double-to-long v2, v2

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public static a(II)Ljava/lang/String;
    .locals 11

    const/16 v2, 0x20

    if-gez p0, :cond_0

    const-wide v0, 0xfffffffeL

    int-to-long v4, p0

    add-long/2addr v0, v4

    const-wide/16 v4, 0x2

    add-long/2addr v0, v4

    :goto_0
    new-array v4, v2, [C

    move v10, v2

    move-wide v2, v0

    move v0, v10

    :goto_1
    int-to-long v6, p1

    div-long v6, v2, v6

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-gtz v1, :cond_1

    add-int/lit8 v0, v0, -0x1

    sget-object v1, Lcom/arcsoft/hpay100/utils/t;->a:[C

    int-to-long v6, p1

    rem-long/2addr v2, v6

    long-to-int v2, v2

    aget-char v1, v1, v2

    aput-char v1, v4, v0

    new-instance v1, Ljava/lang/String;

    rsub-int/lit8 v2, v0, 0x20

    invoke-direct {v1, v4, v0, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v1

    :cond_0
    int-to-long v0, p0

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    sget-object v1, Lcom/arcsoft/hpay100/utils/t;->a:[C

    int-to-long v6, p1

    rem-long v6, v2, v6

    long-to-int v5, v6

    aget-char v1, v1, v5

    aput-char v1, v4, v0

    int-to-long v6, p1

    div-long/2addr v2, v6

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "HPAY_MERKEY"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "dalongTest"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "packageName:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ""

    invoke-static {p0, p1}, Lcom/arcsoft/hpay100/utils/t;->b(Landroid/content/Context;Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-lt v0, v3, :cond_1

    :cond_0
    return-object v1

    :cond_1
    aget-object v1, v2, v0

    invoke-virtual {v1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Lcom/arcsoft/hpay100/utils/l;->a([B)Ljava/lang/String;

    move-result-object v1

    const-string v3, "dalongTest"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "sign:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    const-string v0, "(?<=http://|\\.)[^.]*?\\.(com|cn|net|org|biz|info|cc|tv|top)"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    const-string v1, "dalongTest"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "domain:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    const-string v0, ""

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 3

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;II)V
    .locals 4

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/arcsoft/hpay100/utils/t;->c()Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    :try_start_0
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(I)Z
    .locals 1

    invoke-static {}, Lcom/arcsoft/hpay100/utils/t;->a()I

    move-result v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a([B)[B
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v0, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v0, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->finish()V

    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->close()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static b()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    const-string v1, "yyyyMMdd"

    invoke-static {v1, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "HPAY_APPKEY"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    const-string v0, "[^//]*?\\.(com|cn|net|org|biz|info|cc|tv|top)"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    const-string v1, "dalongTest"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "domain:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    const-string v0, ""

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static b(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, p1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "00000"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v3, p1, v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static b([B)[B
    .locals 8

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v3, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v3, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v0, 0x400

    new-array v0, v0, [B

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_0
    const/4 v5, 0x0

    array-length v6, v0

    invoke-virtual {v3, v0, v5, v6}, Ljava/util/zip/GZIPInputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v3}, Ljava/util/zip/GZIPInputStream;->close()V

    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-object v0

    :cond_0
    const/4 v6, 0x0

    :try_start_2
    invoke-virtual {v4, v0, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)[Landroid/content/pm/Signature;
    .locals 4

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "dalongTest"

    const-string v2, "packageName is null"

    invoke-static {v1, v2}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x40

    :try_start_0
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    if-nez v1, :cond_1

    const-string v1, "dalongTest"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "packageinfo is null packageName is:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v0

    goto :goto_1

    :cond_1
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "HPAY_CHANNEL"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "\\b((?!\\d\\d\\d)\\d+|1\\d\\d|2[0-4]\\d|25[0-5])\\.((?!\\d\\d\\d)\\d+|1\\d\\d|2[0-4]\\d|25[0-5])\\.((?!\\d\\d\\d)\\d+|1\\d\\d|2[0-4]\\d|25[0-5])\\.((?!\\d\\d\\d)\\d+|1\\d\\d|2[0-4]\\d|25[0-5])\\b"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    const-string v1, "dalongTest"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ip:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private static c()Ljava/lang/reflect/Method;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x2

    :try_start_0
    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const-class v2, Landroid/app/Activity;

    const-string v3, "overridePendingTransition"

    invoke-virtual {v2, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
