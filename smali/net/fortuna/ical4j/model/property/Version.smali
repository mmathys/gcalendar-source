.class public Lnet/fortuna/ical4j/model/property/Version;
.super Lnet/fortuna/ical4j/model/Property;
.source "Version.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/fortuna/ical4j/model/property/Version$ImmutableVersion;
    }
.end annotation


# static fields
.field public static final VERSION_2_0:Lnet/fortuna/ical4j/model/property/Version;

.field private static final serialVersionUID:J = 0x7b217b1422beebd8L


# instance fields
.field private maxVersion:Ljava/lang/String;

.field private minVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 57
    new-instance v0, Lnet/fortuna/ical4j/model/property/Version$ImmutableVersion;

    const-string v1, "2.0"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/model/property/Version$ImmutableVersion;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/property/Version$1;)V

    sput-object v0, Lnet/fortuna/ical4j/model/property/Version;->VERSION_2_0:Lnet/fortuna/ical4j/model/property/Version;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 94
    const-string v0, "VERSION"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/ParameterList;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/16 v2, 0x3b

    .line 102
    const-string v0, "VERSION"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 103
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 104
    const/4 v0, 0x0

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/fortuna/ical4j/model/property/Version;->minVersion:Ljava/lang/String;

    .line 105
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/fortuna/ical4j/model/property/Version;->maxVersion:Ljava/lang/String;

    .line 110
    :goto_0
    return-void

    .line 108
    :cond_0
    iput-object p2, p0, Lnet/fortuna/ical4j/model/property/Version;->maxVersion:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final getMaxVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/Version;->maxVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final getMinVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/Version;->minVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 165
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 166
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/Version;->getMinVersion()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 167
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/Version;->getMinVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 168
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/Version;->getMaxVersion()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 169
    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 172
    :cond_0
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/Version;->getMaxVersion()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 173
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/Version;->getMaxVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 175
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/16 v2, 0x3b

    .line 152
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 153
    const/4 v0, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/fortuna/ical4j/model/property/Version;->minVersion:Ljava/lang/String;

    .line 154
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/fortuna/ical4j/model/property/Version;->maxVersion:Ljava/lang/String;

    .line 159
    :goto_0
    return-void

    .line 157
    :cond_0
    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/Version;->maxVersion:Ljava/lang/String;

    goto :goto_0
.end method

.method public final validate()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 197
    return-void
.end method
