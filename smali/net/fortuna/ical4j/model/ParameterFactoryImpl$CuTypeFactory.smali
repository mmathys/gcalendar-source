.class Lnet/fortuna/ical4j/model/ParameterFactoryImpl$CuTypeFactory;
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
    name = "CuTypeFactory"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/fortuna/ical4j/model/ParameterFactoryImpl$1;)V
    .locals 0

    .prologue
    .line 176
    invoke-direct {p0}, Lnet/fortuna/ical4j/model/ParameterFactoryImpl$CuTypeFactory;-><init>()V

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
    .line 180
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/CuType;

    invoke-direct {v0, p2}, Lnet/fortuna/ical4j/model/parameter/CuType;-><init>(Ljava/lang/String;)V

    .line 181
    sget-object v1, Lnet/fortuna/ical4j/model/parameter/CuType;->INDIVIDUAL:Lnet/fortuna/ical4j/model/parameter/CuType;

    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/parameter/CuType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 182
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/CuType;->INDIVIDUAL:Lnet/fortuna/ical4j/model/parameter/CuType;

    .line 196
    :cond_0
    :goto_0
    return-object v0

    .line 184
    :cond_1
    sget-object v1, Lnet/fortuna/ical4j/model/parameter/CuType;->GROUP:Lnet/fortuna/ical4j/model/parameter/CuType;

    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/parameter/CuType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 185
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/CuType;->GROUP:Lnet/fortuna/ical4j/model/parameter/CuType;

    goto :goto_0

    .line 187
    :cond_2
    sget-object v1, Lnet/fortuna/ical4j/model/parameter/CuType;->RESOURCE:Lnet/fortuna/ical4j/model/parameter/CuType;

    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/parameter/CuType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 188
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/CuType;->RESOURCE:Lnet/fortuna/ical4j/model/parameter/CuType;

    goto :goto_0

    .line 190
    :cond_3
    sget-object v1, Lnet/fortuna/ical4j/model/parameter/CuType;->ROOM:Lnet/fortuna/ical4j/model/parameter/CuType;

    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/parameter/CuType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 191
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/CuType;->ROOM:Lnet/fortuna/ical4j/model/parameter/CuType;

    goto :goto_0

    .line 193
    :cond_4
    sget-object v1, Lnet/fortuna/ical4j/model/parameter/CuType;->UNKNOWN:Lnet/fortuna/ical4j/model/parameter/CuType;

    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/parameter/CuType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/CuType;->UNKNOWN:Lnet/fortuna/ical4j/model/parameter/CuType;

    goto :goto_0
.end method
