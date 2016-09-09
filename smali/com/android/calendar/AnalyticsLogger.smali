.class public interface abstract Lcom/android/calendar/AnalyticsLogger;
.super Ljava/lang/Object;
.source "AnalyticsLogger.java"


# virtual methods
.method public abstract initialize(Landroid/content/Context;)Z
.end method

.method public abstract sendAdditionalEventsOnApplicationOpen(Landroid/content/Context;)V
.end method

.method public abstract setAdditionalDimensionsForApplicationOpenEvent(Landroid/content/Context;)V
.end method

.method public abstract setCustomDimension(Landroid/content/Context;ILjava/lang/String;)V
.end method

.method public abstract trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
.end method

.method public abstract trackTiming(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract trackView(Landroid/content/Context;Ljava/lang/String;)V
.end method
