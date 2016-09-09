.class public Lnet/fortuna/ical4j/model/property/Attach;
.super Lnet/fortuna/ical4j/model/Property;
.source "Attach.java"


# static fields
.field private static final serialVersionUID:J = 0x3d9dde8dae7d5cdcL


# instance fields
.field private binary:[B

.field private uri:Ljava/net/URI;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 125
    const-string v0, "ATTACH"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 126
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 2

    .prologue
    .line 164
    const-string v0, "ATTACH"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 165
    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/Attach;->uri:Ljava/net/URI;

    .line 166
    return-void
.end method


# virtual methods
.method public final getBinary()[B
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/Attach;->binary:[B

    return-object v0
.end method

.method public final getUri()Ljava/net/URI;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/Attach;->uri:Ljava/net/URI;

    return-object v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 263
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/Attach;->getUri()Ljava/net/URI;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/Attach;->getUri()Ljava/net/URI;

    move-result-object v0

    invoke-static {v0}, Lnet/fortuna/ical4j/util/Strings;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/fortuna/ical4j/util/Uris;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 283
    :goto_0
    return-object v0

    .line 266
    :cond_0
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/Attach;->getBinary()[B

    move-result-object v0

    if-eqz v0, :cond_1

    .line 269
    :try_start_0
    invoke-static {}, Lnet/fortuna/ical4j/util/EncoderFactory;->getInstance()Lnet/fortuna/ical4j/util/EncoderFactory;

    move-result-object v1

    const-string v0, "ENCODING"

    .line 271
    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/property/Attach;->getParameter(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/parameter/Encoding;

    .line 270
    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/util/EncoderFactory;->createBinaryEncoder(Lnet/fortuna/ical4j/model/parameter/Encoding;)Lorg/apache/commons/codec/BinaryEncoder;

    move-result-object v1

    .line 272
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/Attach;->getBinary()[B

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/codec/BinaryEncoder;->encode([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/commons/codec/EncoderException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 274
    :catch_0
    move-exception v0

    .line 275
    const-class v1, Lnet/fortuna/ical4j/model/property/Attach;

    invoke-static {v1}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v1

    .line 276
    const-string v2, "Error encoding binary data"

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 283
    :cond_1
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 278
    :catch_1
    move-exception v0

    .line 279
    const-class v1, Lnet/fortuna/ical4j/model/property/Attach;

    invoke-static {v1}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v1

    .line 280
    const-string v2, "Error encoding binary data"

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public final setValue(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 236
    const-string v0, "ENCODING"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/property/Attach;->getParameter(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 239
    :try_start_0
    invoke-static {}, Lnet/fortuna/ical4j/util/DecoderFactory;->getInstance()Lnet/fortuna/ical4j/util/DecoderFactory;

    move-result-object v1

    const-string v0, "ENCODING"

    .line 241
    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/property/Attach;->getParameter(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/parameter/Encoding;

    .line 240
    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/util/DecoderFactory;->createBinaryDecoder(Lnet/fortuna/ical4j/model/parameter/Encoding;)Lorg/apache/commons/codec/BinaryDecoder;

    move-result-object v0

    .line 242
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/codec/BinaryDecoder;->decode([B)[B

    move-result-object v0

    iput-object v0, p0, Lnet/fortuna/ical4j/model/property/Attach;->binary:[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/commons/codec/DecoderException; {:try_start_0 .. :try_end_0} :catch_1

    .line 257
    :goto_0
    return-void

    .line 244
    :catch_0
    move-exception v0

    .line 245
    const-class v1, Lnet/fortuna/ical4j/model/property/Attach;

    invoke-static {v1}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v1

    .line 246
    const-string v2, "Error encoding binary data"

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 248
    :catch_1
    move-exception v0

    .line 249
    const-class v1, Lnet/fortuna/ical4j/model/property/Attach;

    invoke-static {v1}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v1

    .line 250
    const-string v2, "Error decoding binary data"

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 255
    :cond_0
    invoke-static {p1}, Lnet/fortuna/ical4j/util/Uris;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lnet/fortuna/ical4j/model/property/Attach;->uri:Ljava/net/URI;

    goto :goto_0
.end method

.method public final validate()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 185
    invoke-static {}, Lnet/fortuna/ical4j/util/ParameterValidator;->getInstance()Lnet/fortuna/ical4j/util/ParameterValidator;

    move-result-object v0

    const-string v1, "FMTTYPE"

    .line 186
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/Attach;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v2

    .line 185
    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/ParameterValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;)V

    .line 196
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/Value;->BINARY:Lnet/fortuna/ical4j/model/parameter/Value;

    const-string v1, "VALUE"

    invoke-virtual {p0, v1}, Lnet/fortuna/ical4j/model/property/Attach;->getParameter(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/parameter/Value;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    invoke-static {}, Lnet/fortuna/ical4j/util/ParameterValidator;->getInstance()Lnet/fortuna/ical4j/util/ParameterValidator;

    move-result-object v0

    const-string v1, "ENCODING"

    .line 198
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/Attach;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v2

    .line 197
    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/ParameterValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;)V

    .line 199
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/Encoding;->BASE64:Lnet/fortuna/ical4j/model/parameter/Encoding;

    const-string v1, "ENCODING"

    invoke-virtual {p0, v1}, Lnet/fortuna/ical4j/model/property/Attach;->getParameter(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/parameter/Encoding;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    new-instance v0, Lnet/fortuna/ical4j/model/ValidationException;

    const-string v1, "If the value type parameter is [BINARY], the inlineencoding parameter MUST be specified with the value [BASE64]"

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/ValidationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_0
    return-void
.end method
