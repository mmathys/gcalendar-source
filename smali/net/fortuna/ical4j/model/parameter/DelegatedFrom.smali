.class public Lnet/fortuna/ical4j/model/parameter/DelegatedFrom;
.super Lnet/fortuna/ical4j/model/Parameter;
.source "DelegatedFrom.java"


# static fields
.field private static final serialVersionUID:J = -0xb0bcde437e8b0c8L


# instance fields
.field private delegators:Lnet/fortuna/ical4j/model/AddressList;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 58
    new-instance v0, Lnet/fortuna/ical4j/model/AddressList;

    invoke-static {p1}, Lnet/fortuna/ical4j/util/Strings;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/AddressList;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lnet/fortuna/ical4j/model/parameter/DelegatedFrom;-><init>(Lnet/fortuna/ical4j/model/AddressList;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/AddressList;)V
    .locals 2

    .prologue
    .line 65
    const-string v0, "DELEGATED-FROM"

    invoke-static {}, Lnet/fortuna/ical4j/model/ParameterFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/ParameterFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Parameter;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterFactory;)V

    .line 66
    iput-object p1, p0, Lnet/fortuna/ical4j/model/parameter/DelegatedFrom;->delegators:Lnet/fortuna/ical4j/model/AddressList;

    .line 67
    return-void
.end method


# virtual methods
.method public final getDelegators()Lnet/fortuna/ical4j/model/AddressList;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lnet/fortuna/ical4j/model/parameter/DelegatedFrom;->delegators:Lnet/fortuna/ical4j/model/AddressList;

    return-object v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/parameter/DelegatedFrom;->getDelegators()Lnet/fortuna/ical4j/model/AddressList;

    move-result-object v0

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/AddressList;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isQuotable()Z
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method
