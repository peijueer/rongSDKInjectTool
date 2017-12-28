.class public Lcom/alibaba/fastjson/serializer/SerializeConfig;
.super Lcom/alibaba/fastjson/util/IdentityHashMap;
.source "SerializeConfig.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/fastjson/util/IdentityHashMap",
        "<",
        "Ljava/lang/reflect/Type;",
        "Lcom/alibaba/fastjson/serializer/ObjectSerializer;",
        ">;"
    }
.end annotation


# static fields
.field private static final globalInstance:Lcom/alibaba/fastjson/serializer/SerializeConfig;


# instance fields
.field private asm:Z

.field private final asmFactory:Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;

.field private typeKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->globalInstance:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 126
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;-><init>(I)V

    .line 127
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "tableSize"    # I

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/util/IdentityHashMap;-><init>(I)V

    .line 59
    invoke-static {}, Lcom/alibaba/fastjson/util/ASMUtils;->isAndroid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->asm:Z

    .line 61
    new-instance v0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->asmFactory:Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;

    .line 64
    sget-object v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->typeKey:Ljava/lang/String;

    .line 132
    const-class v0, Ljava/lang/Boolean;

    sget-object v1, Lcom/alibaba/fastjson/serializer/BooleanSerializer;->instance:Lcom/alibaba/fastjson/serializer/BooleanSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 133
    const-class v0, Ljava/lang/Character;

    sget-object v1, Lcom/alibaba/fastjson/serializer/CharacterSerializer;->instance:Lcom/alibaba/fastjson/serializer/CharacterSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 134
    const-class v0, Ljava/lang/Byte;

    sget-object v1, Lcom/alibaba/fastjson/serializer/ByteSerializer;->instance:Lcom/alibaba/fastjson/serializer/ByteSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 135
    const-class v0, Ljava/lang/Short;

    sget-object v1, Lcom/alibaba/fastjson/serializer/ShortSerializer;->instance:Lcom/alibaba/fastjson/serializer/ShortSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 136
    const-class v0, Ljava/lang/Integer;

    sget-object v1, Lcom/alibaba/fastjson/serializer/IntegerSerializer;->instance:Lcom/alibaba/fastjson/serializer/IntegerSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 137
    const-class v0, Ljava/lang/Long;

    sget-object v1, Lcom/alibaba/fastjson/serializer/LongSerializer;->instance:Lcom/alibaba/fastjson/serializer/LongSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 138
    const-class v0, Ljava/lang/Float;

    sget-object v1, Lcom/alibaba/fastjson/serializer/FloatSerializer;->instance:Lcom/alibaba/fastjson/serializer/FloatSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 139
    const-class v0, Ljava/lang/Double;

    sget-object v1, Lcom/alibaba/fastjson/serializer/DoubleSerializer;->instance:Lcom/alibaba/fastjson/serializer/DoubleSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 140
    const-class v0, Ljava/math/BigDecimal;

    sget-object v1, Lcom/alibaba/fastjson/serializer/BigDecimalSerializer;->instance:Lcom/alibaba/fastjson/serializer/BigDecimalSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 141
    const-class v0, Ljava/math/BigInteger;

    sget-object v1, Lcom/alibaba/fastjson/serializer/BigIntegerSerializer;->instance:Lcom/alibaba/fastjson/serializer/BigIntegerSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 142
    const-class v0, Ljava/lang/String;

    sget-object v1, Lcom/alibaba/fastjson/serializer/StringSerializer;->instance:Lcom/alibaba/fastjson/serializer/StringSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 143
    const-class v0, [B

    sget-object v1, Lcom/alibaba/fastjson/serializer/ByteArraySerializer;->instance:Lcom/alibaba/fastjson/serializer/ByteArraySerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 144
    const-class v0, [S

    sget-object v1, Lcom/alibaba/fastjson/serializer/ShortArraySerializer;->instance:Lcom/alibaba/fastjson/serializer/ShortArraySerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 145
    const-class v0, [I

    sget-object v1, Lcom/alibaba/fastjson/serializer/IntArraySerializer;->instance:Lcom/alibaba/fastjson/serializer/IntArraySerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 146
    const-class v0, [J

    sget-object v1, Lcom/alibaba/fastjson/serializer/LongArraySerializer;->instance:Lcom/alibaba/fastjson/serializer/LongArraySerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 147
    const-class v0, [F

    sget-object v1, Lcom/alibaba/fastjson/serializer/FloatArraySerializer;->instance:Lcom/alibaba/fastjson/serializer/FloatArraySerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 148
    const-class v0, [D

    sget-object v1, Lcom/alibaba/fastjson/serializer/DoubleArraySerializer;->instance:Lcom/alibaba/fastjson/serializer/DoubleArraySerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 149
    const-class v0, [Z

    sget-object v1, Lcom/alibaba/fastjson/serializer/BooleanArraySerializer;->instance:Lcom/alibaba/fastjson/serializer/BooleanArraySerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 150
    const-class v0, [C

    sget-object v1, Lcom/alibaba/fastjson/serializer/CharArraySerializer;->instance:Lcom/alibaba/fastjson/serializer/CharArraySerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 151
    const-class v0, [Ljava/lang/Object;

    sget-object v1, Lcom/alibaba/fastjson/serializer/ObjectArraySerializer;->instance:Lcom/alibaba/fastjson/serializer/ObjectArraySerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 152
    const-class v0, Ljava/lang/Class;

    sget-object v1, Lcom/alibaba/fastjson/serializer/ClassSerializer;->instance:Lcom/alibaba/fastjson/serializer/ClassSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 154
    const-class v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Lcom/alibaba/fastjson/serializer/DateFormatSerializer;->instance:Lcom/alibaba/fastjson/serializer/DateFormatSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 155
    const-class v0, Ljava/util/Locale;

    sget-object v1, Lcom/alibaba/fastjson/serializer/LocaleSerializer;->instance:Lcom/alibaba/fastjson/serializer/LocaleSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 156
    const-class v0, Ljava/util/TimeZone;

    sget-object v1, Lcom/alibaba/fastjson/serializer/TimeZoneSerializer;->instance:Lcom/alibaba/fastjson/serializer/TimeZoneSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 157
    const-class v0, Ljava/util/UUID;

    sget-object v1, Lcom/alibaba/fastjson/serializer/UUIDSerializer;->instance:Lcom/alibaba/fastjson/serializer/UUIDSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 158
    const-class v0, Ljava/net/InetAddress;

    sget-object v1, Lcom/alibaba/fastjson/serializer/InetAddressSerializer;->instance:Lcom/alibaba/fastjson/serializer/InetAddressSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 159
    const-class v0, Ljava/net/Inet4Address;

    sget-object v1, Lcom/alibaba/fastjson/serializer/InetAddressSerializer;->instance:Lcom/alibaba/fastjson/serializer/InetAddressSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 160
    const-class v0, Ljava/net/Inet6Address;

    sget-object v1, Lcom/alibaba/fastjson/serializer/InetAddressSerializer;->instance:Lcom/alibaba/fastjson/serializer/InetAddressSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 161
    const-class v0, Ljava/net/InetSocketAddress;

    sget-object v1, Lcom/alibaba/fastjson/serializer/InetSocketAddressSerializer;->instance:Lcom/alibaba/fastjson/serializer/InetSocketAddressSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 162
    const-class v0, Ljava/io/File;

    sget-object v1, Lcom/alibaba/fastjson/serializer/FileSerializer;->instance:Lcom/alibaba/fastjson/serializer/FileSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 163
    const-class v0, Ljava/net/URI;

    sget-object v1, Lcom/alibaba/fastjson/serializer/URISerializer;->instance:Lcom/alibaba/fastjson/serializer/URISerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 164
    const-class v0, Ljava/net/URL;

    sget-object v1, Lcom/alibaba/fastjson/serializer/URLSerializer;->instance:Lcom/alibaba/fastjson/serializer/URLSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 165
    const-class v0, Ljava/lang/Appendable;

    sget-object v1, Lcom/alibaba/fastjson/serializer/AppendableSerializer;->instance:Lcom/alibaba/fastjson/serializer/AppendableSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 166
    const-class v0, Ljava/lang/StringBuffer;

    sget-object v1, Lcom/alibaba/fastjson/serializer/AppendableSerializer;->instance:Lcom/alibaba/fastjson/serializer/AppendableSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 167
    const-class v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/alibaba/fastjson/serializer/AppendableSerializer;->instance:Lcom/alibaba/fastjson/serializer/AppendableSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 168
    const-class v0, Ljava/util/regex/Pattern;

    sget-object v1, Lcom/alibaba/fastjson/serializer/PatternSerializer;->instance:Lcom/alibaba/fastjson/serializer/PatternSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 169
    const-class v0, Ljava/nio/charset/Charset;

    sget-object v1, Lcom/alibaba/fastjson/serializer/CharsetSerializer;->instance:Lcom/alibaba/fastjson/serializer/CharsetSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 172
    const-class v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v1, Lcom/alibaba/fastjson/serializer/AtomicBooleanSerializer;->instance:Lcom/alibaba/fastjson/serializer/AtomicBooleanSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 173
    const-class v0, Ljava/util/concurrent/atomic/AtomicInteger;

    sget-object v1, Lcom/alibaba/fastjson/serializer/AtomicIntegerSerializer;->instance:Lcom/alibaba/fastjson/serializer/AtomicIntegerSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 174
    const-class v0, Ljava/util/concurrent/atomic/AtomicLong;

    sget-object v1, Lcom/alibaba/fastjson/serializer/AtomicLongSerializer;->instance:Lcom/alibaba/fastjson/serializer/AtomicLongSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 175
    const-class v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/alibaba/fastjson/serializer/ReferenceSerializer;->instance:Lcom/alibaba/fastjson/serializer/ReferenceSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 176
    const-class v0, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    sget-object v1, Lcom/alibaba/fastjson/serializer/AtomicIntegerArraySerializer;->instance:Lcom/alibaba/fastjson/serializer/AtomicIntegerArraySerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 177
    const-class v0, Ljava/util/concurrent/atomic/AtomicLongArray;

    sget-object v1, Lcom/alibaba/fastjson/serializer/AtomicLongArraySerializer;->instance:Lcom/alibaba/fastjson/serializer/AtomicLongArraySerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 179
    const-class v0, Ljava/lang/ref/WeakReference;

    sget-object v1, Lcom/alibaba/fastjson/serializer/ReferenceSerializer;->instance:Lcom/alibaba/fastjson/serializer/ReferenceSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 180
    const-class v0, Ljava/lang/ref/SoftReference;

    sget-object v1, Lcom/alibaba/fastjson/serializer/ReferenceSerializer;->instance:Lcom/alibaba/fastjson/serializer/ReferenceSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 184
    :try_start_0
    const-string v0, "java.awt.Color"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lcom/alibaba/fastjson/serializer/ColorSerializer;->instance:Lcom/alibaba/fastjson/serializer/ColorSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 185
    const-string v0, "java.awt.Font"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lcom/alibaba/fastjson/serializer/FontSerializer;->instance:Lcom/alibaba/fastjson/serializer/FontSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 186
    const-string v0, "java.awt.Point"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lcom/alibaba/fastjson/serializer/PointSerializer;->instance:Lcom/alibaba/fastjson/serializer/PointSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 187
    const-string v0, "java.awt.Rectangle"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lcom/alibaba/fastjson/serializer/RectangleSerializer;->instance:Lcom/alibaba/fastjson/serializer/RectangleSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :goto_1
    return-void

    .line 59
    :cond_0
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 189
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static final getGlobalInstance()Lcom/alibaba/fastjson/serializer/SerializeConfig;
    .locals 1

    .prologue
    .line 122
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->globalInstance:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    return-object v0
.end method


# virtual methods
.method public final createASMSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/alibaba/fastjson/serializer/ObjectSerializer;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 76
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->asmFactory:Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->createJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v0

    return-object v0
.end method

.method public createJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/alibaba/fastjson/serializer/ObjectSerializer;"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 81
    new-instance v3, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    invoke-direct {v3, p1}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;-><init>(Ljava/lang/Class;)V

    .line 110
    :goto_0
    return-object v3

    .line 84
    :cond_0
    iget-boolean v1, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->asm:Z

    .line 86
    .local v1, "asm":Z
    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->asmFactory:Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;

    invoke-virtual {v3, p1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->isExternalClass(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    const-class v3, Ljava/io/Serializable;

    if-eq p1, v3, :cond_2

    const-class v3, Ljava/lang/Object;

    if-ne p1, v3, :cond_3

    .line 88
    :cond_2
    const/4 v1, 0x0

    .line 92
    :cond_3
    const-class v3, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-virtual {p1, v3}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 93
    .local v0, "annotation":Lcom/alibaba/fastjson/annotation/JSONType;
    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONType;->asm()Z

    move-result v3

    if-nez v3, :cond_4

    .line 94
    const/4 v1, 0x0

    .line 98
    :cond_4
    if-eqz v1, :cond_5

    .line 100
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->createASMSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    goto :goto_0

    .line 101
    :catch_0
    move-exception v2

    .line 103
    .local v2, "e":Ljava/lang/ClassCastException;
    new-instance v3, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    invoke-direct {v3, p1}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;-><init>(Ljava/lang/Class;)V

    goto :goto_0

    .line 104
    .end local v2    # "e":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v2

    .line 105
    .local v2, "e":Ljava/lang/Throwable;
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "create asm serializer error, class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 110
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_5
    new-instance v3, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    invoke-direct {v3, p1}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;-><init>(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public getTypeKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->typeKey:Ljava/lang/String;

    return-object v0
.end method

.method public isAsmEnable()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->asm:Z

    return v0
.end method

.method public setAsmEnable(Z)V
    .locals 0
    .param p1, "asmEnable"    # Z

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->asm:Z

    .line 119
    return-void
.end method

.method public setTypeKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "typeKey"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->typeKey:Ljava/lang/String;

    .line 72
    return-void
.end method
