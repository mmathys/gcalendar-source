.class public Lnet/fortuna/ical4j/model/property/LastModified;
.super Lnet/fortuna/ical4j/model/property/UtcProperty;
.source "LastModified.java"


# static fields
.field private static final serialVersionUID:J = 0x4964c8ce96746edeL


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 87
    const-string v0, "LAST-MODIFIED"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/property/UtcProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 88
    return-void
.end method
