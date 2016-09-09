.class public Lcom/google/android/apps/common/ical4jutils/CalendarBuilderWrapper$DateUtils;
.super Ljava/lang/Object;
.source "CalendarBuilderWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/common/ical4jutils/CalendarBuilderWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DateUtils"
.end annotation


# static fields
.field private static final timeZoneRegistryFactory:Lnet/fortuna/ical4j/model/TimeZoneRegistryFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 158
    const-string v0, "net.fortuna.ical4j.timezone.update.enabled"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 159
    invoke-static {}, Lnet/fortuna/ical4j/model/TimeZoneRegistryFactory;->getInstance()Lnet/fortuna/ical4j/model/TimeZoneRegistryFactory;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/common/ical4jutils/CalendarBuilderWrapper$DateUtils;->timeZoneRegistryFactory:Lnet/fortuna/ical4j/model/TimeZoneRegistryFactory;

    .line 160
    return-void
.end method

.method public static createTimeZoneRegistry()Lnet/fortuna/ical4j/model/TimeZoneRegistry;
    .locals 1

    .prologue
    .line 163
    sget-object v0, Lcom/google/android/apps/common/ical4jutils/CalendarBuilderWrapper$DateUtils;->timeZoneRegistryFactory:Lnet/fortuna/ical4j/model/TimeZoneRegistryFactory;

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/TimeZoneRegistryFactory;->createRegistry()Lnet/fortuna/ical4j/model/TimeZoneRegistry;

    move-result-object v0

    return-object v0
.end method
