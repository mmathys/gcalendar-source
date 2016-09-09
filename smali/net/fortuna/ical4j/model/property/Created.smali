.class public Lnet/fortuna/ical4j/model/property/Created;
.super Lnet/fortuna/ical4j/model/property/UtcProperty;
.source "Created.java"


# static fields
.field private static final serialVersionUID:J = -0x782ab79828dc86e1L


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 86
    const-string v0, "CREATED"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/property/UtcProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 87
    return-void
.end method
