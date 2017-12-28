.class public Lcom/alibaba/fastjson/parser/ParserConfig;
.super Ljava/lang/Object;
.source "ParserConfig.java"


# static fields
.field private static global:Lcom/alibaba/fastjson/parser/ParserConfig;


# instance fields
.field private asmEnable:Z

.field private final derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/fastjson/util/IdentityHashMap",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;",
            ">;"
        }
    .end annotation
.end field

.field private final primitiveClasses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field protected final symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 141
    new-instance v0, Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-direct {v0}, Lcom/alibaba/fastjson/parser/ParserConfig;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->primitiveClasses:Ljava/util/Set;

    .line 143
    new-instance v0, Lcom/alibaba/fastjson/util/IdentityHashMap;

    invoke-direct {v0}, Lcom/alibaba/fastjson/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    .line 145
    invoke-static {}, Lcom/alibaba/fastjson/util/ASMUtils;->isAndroid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->asmEnable:Z

    .line 147
    new-instance v0, Lcom/alibaba/fastjson/parser/SymbolTable;

    invoke-direct {v0}, Lcom/alibaba/fastjson/parser/SymbolTable;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    .line 150
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->primitiveClasses:Ljava/util/Set;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 151
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->primitiveClasses:Ljava/util/Set;

    const-class v1, Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 153
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->primitiveClasses:Ljava/util/Set;

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 154
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->primitiveClasses:Ljava/util/Set;

    const-class v1, Ljava/lang/Character;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 156
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->primitiveClasses:Ljava/util/Set;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 157
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->primitiveClasses:Ljava/util/Set;

    const-class v1, Ljava/lang/Byte;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 159
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->primitiveClasses:Ljava/util/Set;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 160
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->primitiveClasses:Ljava/util/Set;

    const-class v1, Ljava/lang/Short;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 162
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->primitiveClasses:Ljava/util/Set;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 163
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->primitiveClasses:Ljava/util/Set;

    const-class v1, Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 165
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->primitiveClasses:Ljava/util/Set;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 166
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->primitiveClasses:Ljava/util/Set;

    const-class v1, Ljava/lang/Long;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 168
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->primitiveClasses:Ljava/util/Set;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 169
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->primitiveClasses:Ljava/util/Set;

    const-class v1, Ljava/lang/Float;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 171
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->primitiveClasses:Ljava/util/Set;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 172
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->primitiveClasses:Ljava/util/Set;

    const-class v1, Ljava/lang/Double;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 174
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->primitiveClasses:Ljava/util/Set;

    const-class v1, Ljava/math/BigInteger;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 175
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->primitiveClasses:Ljava/util/Set;

    const-class v1, Ljava/math/BigDecimal;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 177
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->primitiveClasses:Ljava/util/Set;

    const-class v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 178
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->primitiveClasses:Ljava/util/Set;

    const-class v1, Ljava/util/Date;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 179
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->primitiveClasses:Ljava/util/Set;

    const-class v1, Ljava/sql/Date;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 180
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->primitiveClasses:Ljava/util/Set;

    const-class v1, Ljava/sql/Time;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 181
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->primitiveClasses:Ljava/util/Set;

    const-class v1, Ljava/sql/Timestamp;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 183
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/DateFormatDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/DateFormatDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 184
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/sql/Timestamp;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/TimestampDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/TimestampDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 185
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/sql/Date;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/SqlDateDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/SqlDateDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 186
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/sql/Time;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/TimeDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/TimeDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 187
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/util/Date;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/DateDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/DateDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 188
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/util/Calendar;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/CalendarDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/CalendarDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 190
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Lcom/alibaba/fastjson/JSONObject;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/JSONObjectDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/JSONObjectDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 191
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Lcom/alibaba/fastjson/JSONArray;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/JSONArrayDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/JSONArrayDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 193
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/util/Map;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 194
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/util/HashMap;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 195
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/util/LinkedHashMap;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 196
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/util/TreeMap;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 197
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/util/concurrent/ConcurrentMap;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 198
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 200
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/util/Collection;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/CollectionDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/CollectionDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 201
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/util/List;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/CollectionDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/CollectionDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 202
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/util/ArrayList;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/CollectionDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/CollectionDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 204
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/lang/Object;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/JavaObjectDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/JavaObjectDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 205
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/lang/String;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/StringDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/StringDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 206
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/CharacterDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/CharacterDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 207
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/lang/Character;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/CharacterDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/CharacterDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 208
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 209
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/lang/Byte;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 210
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 211
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/lang/Short;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 212
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/IntegerDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/IntegerDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 213
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/lang/Integer;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/IntegerDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/IntegerDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 214
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/LongDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/LongDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 215
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/lang/Long;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/LongDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/LongDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 216
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/math/BigInteger;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/BigIntegerDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/BigIntegerDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 217
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/math/BigDecimal;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/BigDecimalDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/BigDecimalDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 218
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/FloatDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/FloatDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 219
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/lang/Float;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/FloatDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/FloatDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 220
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 221
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/lang/Double;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 222
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/BooleanDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/BooleanDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 223
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/lang/Boolean;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/BooleanDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/BooleanDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 224
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/lang/Class;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/ClassDerializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/ClassDerializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 225
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, [C

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/CharArrayDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/CharArrayDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 227
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/BooleanDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/BooleanDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 228
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/util/concurrent/atomic/AtomicInteger;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/IntegerDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/IntegerDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 229
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/util/concurrent/atomic/AtomicLong;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/LongDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/LongDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 230
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/ReferenceDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/ReferenceDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 232
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/lang/ref/WeakReference;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/ReferenceDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/ReferenceDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 233
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/lang/ref/SoftReference;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/ReferenceDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/ReferenceDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 235
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/util/UUID;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/UUIDDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/UUIDDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 236
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/util/TimeZone;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/TimeZoneDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/TimeZoneDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 237
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/util/Locale;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/LocaleDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/LocaleDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 238
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/net/InetAddress;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/InetAddressDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/InetAddressDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 239
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/net/Inet4Address;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/InetAddressDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/InetAddressDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 240
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/net/Inet6Address;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/InetAddressDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/InetAddressDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 241
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/net/InetSocketAddress;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/InetSocketAddressDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/InetSocketAddressDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 242
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/io/File;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/FileDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/FileDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 243
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/net/URI;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/URIDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/URIDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 244
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/net/URL;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/URLDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/URLDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 245
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/util/regex/Pattern;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/PatternDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/PatternDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 246
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/nio/charset/Charset;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/CharsetDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/CharsetDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 247
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/lang/Number;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 248
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/AtomicIntegerArrayDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/AtomicIntegerArrayDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 249
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/util/concurrent/atomic/AtomicLongArray;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/AtomicLongArrayDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/AtomicLongArrayDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 250
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/lang/StackTraceElement;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/StackTraceElementDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/StackTraceElementDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 252
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/io/Serializable;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/JavaObjectDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/JavaObjectDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 253
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/lang/Cloneable;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/JavaObjectDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/JavaObjectDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 254
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/lang/Comparable;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/JavaObjectDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/JavaObjectDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 255
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/io/Closeable;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/JavaObjectDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/JavaObjectDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 258
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-string v1, "java.awt.Point"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/PointDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/PointDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 259
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-string v1, "java.awt.Font"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/FontDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/FontDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 260
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-string v1, "java.awt.Rectangle"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/RectangleDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/RectangleDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 261
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-string v1, "java.awt.Color"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/ColorDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/ColorDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    :goto_1
    return-void

    .line 145
    :cond_0
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 262
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .line 512
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, p1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getField0(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 513
    .local v0, "field":Ljava/lang/reflect/Field;
    if-nez v0, :cond_0

    .line 514
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getField0(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 516
    :cond_0
    if-nez v0, :cond_1

    .line 517
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "m_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getField0(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 519
    :cond_1
    return-object v0
.end method

.method private static getField0(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 6
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .line 523
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 524
    .local v2, "item":Ljava/lang/reflect/Field;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 532
    .end local v2    # "item":Ljava/lang/reflect/Field;
    :goto_1
    return-object v2

    .line 523
    .restart local v2    # "item":Ljava/lang/reflect/Field;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 528
    .end local v2    # "item":Ljava/lang/reflect/Field;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Ljava/lang/Object;

    if-eq v4, v5, :cond_2

    .line 529
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    goto :goto_1

    .line 532
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;
    .locals 1

    .prologue
    .line 136
    sget-object v0, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    return-object v0
.end method


# virtual methods
.method public createFieldDeserializer(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .locals 3
    .param p1, "mapping"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .param p3, "fieldInfo"    # Lcom/alibaba/fastjson/util/FieldInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ")",
            "Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;"
        }
    .end annotation

    .prologue
    .line 446
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-boolean v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->asmEnable:Z

    .line 448
    .local v0, "asmEnable":Z
    invoke-virtual {p2}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 449
    const/4 v0, 0x0

    .line 452
    :cond_0
    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/Class;

    if-ne v1, v2, :cond_1

    .line 453
    const/4 v0, 0x0

    .line 456
    :cond_1
    invoke-static {}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->getInstance()Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->isExternalClass(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 457
    const/4 v0, 0x0

    .line 460
    :cond_2
    if-nez v0, :cond_3

    .line 461
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/ParserConfig;->createFieldDeserializerWithoutASM(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v1

    .line 470
    :goto_0
    return-object v1

    .line 465
    :cond_3
    :try_start_0
    invoke-static {}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->getInstance()Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->createFieldDeserializer(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 466
    :catch_0
    move-exception v1

    .line 470
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/ParserConfig;->createFieldDeserializerWithoutASM(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v1

    goto :goto_0
.end method

.method public createFieldDeserializerWithoutASM(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .locals 2
    .param p1, "mapping"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .param p3, "fieldInfo"    # Lcom/alibaba/fastjson/util/FieldInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ")",
            "Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;"
        }
    .end annotation

    .prologue
    .line 474
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldClass()Ljava/lang/Class;

    move-result-object v0

    .line 476
    .local v0, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_0

    const-class v1, Ljava/lang/Boolean;

    if-ne v0, v1, :cond_1

    .line 477
    :cond_0
    new-instance v1, Lcom/alibaba/fastjson/parser/deserializer/BooleanFieldDeserializer;

    invoke-direct {v1, p1, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/BooleanFieldDeserializer;-><init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V

    .line 496
    :goto_0
    return-object v1

    .line 480
    :cond_1
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_2

    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_3

    .line 481
    :cond_2
    new-instance v1, Lcom/alibaba/fastjson/parser/deserializer/IntegerFieldDeserializer;

    invoke-direct {v1, p1, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/IntegerFieldDeserializer;-><init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V

    goto :goto_0

    .line 484
    :cond_3
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_4

    const-class v1, Ljava/lang/Long;

    if-ne v0, v1, :cond_5

    .line 485
    :cond_4
    new-instance v1, Lcom/alibaba/fastjson/parser/deserializer/LongFieldDeserializer;

    invoke-direct {v1, p1, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/LongFieldDeserializer;-><init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V

    goto :goto_0

    .line 488
    :cond_5
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_6

    .line 489
    new-instance v1, Lcom/alibaba/fastjson/parser/deserializer/StringFieldDeserializer;

    invoke-direct {v1, p1, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/StringFieldDeserializer;-><init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V

    goto :goto_0

    .line 492
    :cond_6
    const-class v1, Ljava/util/List;

    if-eq v0, v1, :cond_7

    const-class v1, Ljava/util/ArrayList;

    if-ne v0, v1, :cond_8

    .line 493
    :cond_7
    new-instance v1, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;

    invoke-direct {v1, p1, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;-><init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V

    goto :goto_0

    .line 496
    :cond_8
    new-instance v1, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;

    invoke-direct {v1, p1, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;-><init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V

    goto :goto_0
.end method

.method public createJavaBeanDeserializer(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .locals 11
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;"
        }
    .end annotation

    .prologue
    .line 378
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-boolean v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->asmEnable:Z

    .line 379
    .local v0, "asmEnable":Z
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v8

    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 380
    const/4 v0, 0x0

    .line 383
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v8

    array-length v8, v8

    if-eqz v8, :cond_1

    .line 384
    const/4 v0, 0x0

    .line 387
    :cond_1
    invoke-static {}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->getInstance()Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->isExternalClass(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 388
    const/4 v0, 0x0

    .line 391
    :cond_2
    if-eqz v0, :cond_7

    .line 392
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 393
    const/4 v0, 0x0

    .line 395
    :cond_3
    invoke-static {p1, p2}, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->computeSetters(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/util/DeserializeBeanInfo;

    move-result-object v2

    .line 396
    .local v2, "beanInfo":Lcom/alibaba/fastjson/util/DeserializeBeanInfo;
    invoke-virtual {v2}, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->getFieldList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/16 v9, 0xc8

    if-le v8, v9, :cond_4

    .line 397
    const/4 v0, 0x0

    .line 400
    :cond_4
    invoke-virtual {v2}, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->getDefaultConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 401
    .local v3, "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    if-nez v3, :cond_5

    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v8

    if-nez v8, :cond_5

    .line 402
    const/4 v0, 0x0

    .line 405
    :cond_5
    invoke-virtual {v2}, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->getFieldList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 406
    .local v6, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    invoke-virtual {v6}, Lcom/alibaba/fastjson/util/FieldInfo;->isGetOnly()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 407
    const/4 v0, 0x0

    .line 423
    .end local v2    # "beanInfo":Lcom/alibaba/fastjson/util/DeserializeBeanInfo;
    .end local v3    # "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v6    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_7
    :goto_1
    if-eqz v0, :cond_8

    .line 424
    invoke-virtual {p1}, Ljava/lang/Class;->isMemberClass()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v8

    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v8

    if-nez v8, :cond_8

    .line 425
    const/4 v0, 0x0

    .line 429
    :cond_8
    if-nez v0, :cond_b

    .line 430
    new-instance v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    invoke-direct {v8, p0, p1, p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;-><init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    .line 439
    :goto_2
    return-object v8

    .line 411
    .restart local v2    # "beanInfo":Lcom/alibaba/fastjson/util/DeserializeBeanInfo;
    .restart local v3    # "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v6    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v7    # "i$":Ljava/util/Iterator;
    :cond_9
    invoke-virtual {v6}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldClass()Ljava/lang/Class;

    move-result-object v5

    .line 412
    .local v5, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v5}, Ljava/lang/Class;->getModifiers()I

    move-result v8

    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v8

    if-nez v8, :cond_a

    .line 413
    const/4 v0, 0x0

    .line 414
    goto :goto_1

    .line 417
    :cond_a
    invoke-virtual {v5}, Ljava/lang/Class;->isMemberClass()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v5}, Ljava/lang/Class;->getModifiers()I

    move-result v8

    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v8

    if-nez v8, :cond_6

    .line 418
    const/4 v0, 0x0

    goto :goto_0

    .line 434
    .end local v2    # "beanInfo":Lcom/alibaba/fastjson/util/DeserializeBeanInfo;
    .end local v3    # "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v5    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_b
    :try_start_0
    invoke-static {}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->getInstance()Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;

    move-result-object v8

    invoke-virtual {v8, p0, p1, p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->createJavaBeanDeserializer(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :try_end_0
    .catch Lcom/alibaba/fastjson/asm/ASMException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    goto :goto_2

    .line 438
    :catch_0
    move-exception v1

    .line 439
    .local v1, "asmError":Lcom/alibaba/fastjson/asm/ASMException;
    new-instance v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    invoke-direct {v8, p0, p1, p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;-><init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    goto :goto_2

    .line 440
    .end local v1    # "asmError":Lcom/alibaba/fastjson/asm/ASMException;
    :catch_1
    move-exception v4

    .line 441
    .local v4, "e":Ljava/lang/Exception;
    new-instance v8, Lcom/alibaba/fastjson/JSONException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "create asm deserializer error, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
.end method

.method public getDerializers()Lcom/alibaba/fastjson/util/IdentityHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/alibaba/fastjson/util/IdentityHashMap",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 280
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    return-object v0
.end method

.method public getDeserializer(Lcom/alibaba/fastjson/util/FieldInfo;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .locals 2
    .param p1, "fieldInfo"    # Lcom/alibaba/fastjson/util/FieldInfo;

    .prologue
    .line 504
    invoke-virtual {p1}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v0

    return-object v0
.end method

.method public getDeserializer(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .locals 9
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;"
        }
    .end annotation

    .prologue
    .line 306
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    invoke-virtual {v8, p2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    .line 307
    .local v3, "derializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    if-eqz v3, :cond_0

    move-object v8, v3

    .line 374
    :goto_0
    return-object v8

    .line 311
    :cond_0
    if-nez p2, :cond_1

    .line 312
    move-object p2, p1

    .line 315
    :cond_1
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    invoke-virtual {v8, p2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "derializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    check-cast v3, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    .line 316
    .restart local v3    # "derializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    if-eqz v3, :cond_2

    move-object v8, v3

    .line 317
    goto :goto_0

    .line 321
    :cond_2
    const-class v8, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-virtual {p1, v8}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 322
    .local v0, "annotation":Lcom/alibaba/fastjson/annotation/JSONType;
    if-eqz v0, :cond_3

    .line 323
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONType;->mappingTo()Ljava/lang/Class;

    move-result-object v7

    .line 324
    .local v7, "mappingTo":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v8, Ljava/lang/Void;

    if-eq v7, v8, :cond_3

    .line 325
    invoke-virtual {p0, v7, v7}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v8

    goto :goto_0

    .line 330
    .end local v7    # "mappingTo":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    instance-of v8, p2, Ljava/lang/reflect/WildcardType;

    if-nez v8, :cond_4

    instance-of v8, p2, Ljava/lang/reflect/TypeVariable;

    if-nez v8, :cond_4

    instance-of v8, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v8, :cond_5

    .line 331
    :cond_4
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    invoke-virtual {v8, p1}, Lcom/alibaba/fastjson/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "derializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    check-cast v3, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    .line 334
    .restart local v3    # "derializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :cond_5
    if-eqz v3, :cond_6

    move-object v8, v3

    .line 335
    goto :goto_0

    .line 338
    :cond_6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 340
    .local v2, "classLoader":Ljava/lang/ClassLoader;
    :try_start_0
    const-class v8, Lcom/alibaba/fastjson/parser/deserializer/AutowiredObjectDeserializer;

    invoke-static {v8, v2}, Lcom/alibaba/fastjson/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/parser/deserializer/AutowiredObjectDeserializer;

    .line 342
    .local v1, "autowired":Lcom/alibaba/fastjson/parser/deserializer/AutowiredObjectDeserializer;
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/deserializer/AutowiredObjectDeserializer;->getAutowiredFor()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Type;

    .line 343
    .local v4, "forType":Ljava/lang/reflect/Type;
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    invoke-virtual {v8, v4, v1}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 346
    .end local v1    # "autowired":Lcom/alibaba/fastjson/parser/deserializer/AutowiredObjectDeserializer;
    .end local v4    # "forType":Ljava/lang/reflect/Type;
    .end local v6    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v8

    .line 350
    :cond_8
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    invoke-virtual {v8, p2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "derializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    check-cast v3, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    .line 351
    .restart local v3    # "derializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    if-eqz v3, :cond_9

    move-object v8, v3

    .line 352
    goto/16 :goto_0

    .line 355
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 356
    new-instance v3, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;

    .end local v3    # "derializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    invoke-direct {v3, p1}, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;-><init>(Ljava/lang/Class;)V

    .line 372
    .restart local v3    # "derializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :goto_2
    invoke-virtual {p0, p2, v3}, Lcom/alibaba/fastjson/parser/ParserConfig;->putDeserializer(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;)V

    move-object v8, v3

    .line 374
    goto/16 :goto_0

    .line 357
    :cond_a
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 358
    sget-object v8, Lcom/alibaba/fastjson/parser/deserializer/ArrayDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/ArrayDeserializer;

    goto/16 :goto_0

    .line 359
    :cond_b
    const-class v8, Ljava/util/Set;

    if-eq p1, v8, :cond_c

    const-class v8, Ljava/util/HashSet;

    if-eq p1, v8, :cond_c

    const-class v8, Ljava/util/Collection;

    if-eq p1, v8, :cond_c

    const-class v8, Ljava/util/List;

    if-eq p1, v8, :cond_c

    const-class v8, Ljava/util/ArrayList;

    if-ne p1, v8, :cond_d

    .line 361
    :cond_c
    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/CollectionDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/CollectionDeserializer;

    goto :goto_2

    .line 362
    :cond_d
    const-class v8, Ljava/util/Collection;

    invoke-virtual {v8, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 363
    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/CollectionDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/CollectionDeserializer;

    goto :goto_2

    .line 364
    :cond_e
    const-class v8, Ljava/util/Map;

    invoke-virtual {v8, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 365
    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;

    goto :goto_2

    .line 366
    :cond_f
    const-class v8, Ljava/lang/Throwable;

    invoke-virtual {v8, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 367
    new-instance v3, Lcom/alibaba/fastjson/parser/deserializer/ThrowableDeserializer;

    .end local v3    # "derializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    invoke-direct {v3, p0, p1}, Lcom/alibaba/fastjson/parser/deserializer/ThrowableDeserializer;-><init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;)V

    .restart local v3    # "derializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    goto :goto_2

    .line 369
    :cond_10
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/parser/ParserConfig;->createJavaBeanDeserializer(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v3

    goto :goto_2
.end method

.method public getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .locals 3
    .param p1, "type"    # Ljava/lang/reflect/Type;

    .prologue
    .line 284
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    invoke-virtual {v2, p1}, Lcom/alibaba/fastjson/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    .line 285
    .local v0, "derializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    if-eqz v0, :cond_0

    .line 302
    .end local v0    # "derializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :goto_0
    return-object v0

    .line 289
    .restart local v0    # "derializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :cond_0
    instance-of v2, p1, Ljava/lang/Class;

    if-eqz v2, :cond_1

    move-object v2, p1

    .line 290
    check-cast v2, Ljava/lang/Class;

    invoke-virtual {p0, v2, p1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v0

    goto :goto_0

    .line 293
    :cond_1
    instance-of v2, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_3

    move-object v2, p1

    .line 294
    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 295
    .local v1, "rawType":Ljava/lang/reflect/Type;
    instance-of v2, v1, Ljava/lang/Class;

    if-eqz v2, :cond_2

    .line 296
    check-cast v1, Ljava/lang/Class;

    .end local v1    # "rawType":Ljava/lang/reflect/Type;
    invoke-virtual {p0, v1, p1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v0

    goto :goto_0

    .line 298
    .restart local v1    # "rawType":Ljava/lang/reflect/Type;
    :cond_2
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v0

    goto :goto_0

    .line 302
    .end local v1    # "rawType":Ljava/lang/reflect/Type;
    :cond_3
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/JavaObjectDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/JavaObjectDeserializer;

    goto :goto_0
.end method

.method public getFieldDeserializers(Ljava/lang/Class;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 536
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v0

    .line 538
    .local v0, "deserizer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    instance-of v1, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    if-eqz v1, :cond_0

    .line 539
    check-cast v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    .end local v0    # "deserizer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializerMap()Ljava/util/Map;

    move-result-object v1

    .line 543
    :goto_0
    return-object v1

    .line 540
    .restart local v0    # "deserizer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :cond_0
    instance-of v1, v0, Lcom/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer;

    if-eqz v1, :cond_1

    .line 541
    check-cast v0, Lcom/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer;

    .end local v0    # "deserizer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer;->getInnterSerializer()Lcom/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer$InnerJavaBeanDeserializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer$InnerJavaBeanDeserializer;->getFieldDeserializerMap()Ljava/util/Map;

    move-result-object v1

    goto :goto_0

    .line 543
    .restart local v0    # "deserizer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    goto :goto_0
.end method

.method public getSymbolTable()Lcom/alibaba/fastjson/parser/SymbolTable;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    return-object v0
.end method

.method public isAsmEnable()Z
    .locals 1

    .prologue
    .line 268
    iget-boolean v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->asmEnable:Z

    return v0
.end method

.method public isPrimitive(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 508
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->primitiveClasses:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public putDeserializer(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "deserializer"    # Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    .prologue
    .line 500
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 501
    return-void
.end method

.method public setAsmEnable(Z)V
    .locals 0
    .param p1, "asmEnable"    # Z

    .prologue
    .line 272
    iput-boolean p1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->asmEnable:Z

    .line 273
    return-void
.end method
