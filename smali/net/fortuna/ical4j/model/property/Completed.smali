.class public Lnet/fortuna/ical4j/model/property/Completed;
.super Lnet/fortuna/ical4j/model/property/UtcProperty;
.source "Completed.java"


# static fields
.field private static final serialVersionUID:J = 0x5eb479d2d455f10dL


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 82
    const-string v0, "COMPLETED"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/property/UtcProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 83
    return-void
.end method
