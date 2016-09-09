.class public abstract Lnet/fortuna/ical4j/util/DecoderFactory;
.super Ljava/lang/Object;
.source "DecoderFactory.java"


# static fields
.field private static instance:Lnet/fortuna/ical4j/util/DecoderFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    :try_start_0
    const-string v0, "net.fortuna.ical4j.factory.decoder"

    invoke-static {v0}, Lnet/fortuna/ical4j/util/Configurator;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/util/DecoderFactory;

    sput-object v0, Lnet/fortuna/ical4j/util/DecoderFactory;->instance:Lnet/fortuna/ical4j/util/DecoderFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 65
    new-instance v0, Lnet/fortuna/ical4j/util/DefaultDecoderFactory;

    invoke-direct {v0}, Lnet/fortuna/ical4j/util/DefaultDecoderFactory;-><init>()V

    sput-object v0, Lnet/fortuna/ical4j/util/DecoderFactory;->instance:Lnet/fortuna/ical4j/util/DecoderFactory;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getInstance()Lnet/fortuna/ical4j/util/DecoderFactory;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lnet/fortuna/ical4j/util/DecoderFactory;->instance:Lnet/fortuna/ical4j/util/DecoderFactory;

    return-object v0
.end method


# virtual methods
.method public abstract createBinaryDecoder(Lnet/fortuna/ical4j/model/parameter/Encoding;)Lorg/apache/commons/codec/BinaryDecoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation
.end method
