.class Lnet/fortuna/ical4j/model/ParameterFactoryImpl$EncodingFactory;
.super Ljava/lang/Object;
.source "ParameterFactoryImpl.java"

# interfaces
.implements Lnet/fortuna/ical4j/model/ParameterFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/fortuna/ical4j/model/ParameterFactoryImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EncodingFactory"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/fortuna/ical4j/model/ParameterFactoryImpl$1;)V
    .locals 0

    .prologue
    .line 227
    invoke-direct {p0}, Lnet/fortuna/ical4j/model/ParameterFactoryImpl$EncodingFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createParameter(Ljava/lang/String;Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 232
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/Encoding;

    invoke-direct {v0, p2}, Lnet/fortuna/ical4j/model/parameter/Encoding;-><init>(Ljava/lang/String;)V

    .line 233
    sget-object v1, Lnet/fortuna/ical4j/model/parameter/Encoding;->EIGHT_BIT:Lnet/fortuna/ical4j/model/parameter/Encoding;

    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/parameter/Encoding;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 234
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/Encoding;->EIGHT_BIT:Lnet/fortuna/ical4j/model/parameter/Encoding;

    .line 239
    :cond_0
    :goto_0
    return-object v0

    .line 236
    :cond_1
    sget-object v1, Lnet/fortuna/ical4j/model/parameter/Encoding;->BASE64:Lnet/fortuna/ical4j/model/parameter/Encoding;

    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/parameter/Encoding;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 237
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/Encoding;->BASE64:Lnet/fortuna/ical4j/model/parameter/Encoding;

    goto :goto_0
.end method
