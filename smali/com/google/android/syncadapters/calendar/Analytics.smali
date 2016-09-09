.class public interface abstract Lcom/google/android/syncadapters/calendar/Analytics;
.super Ljava/lang/Object;
.source "Analytics.java"


# virtual methods
.method public abstract setCustomDimension(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract setCustomMetric(Landroid/content/Context;Ljava/lang/String;IJ)V
.end method

.method public abstract setSampleRate(Landroid/content/Context;Ljava/lang/String;D)V
.end method

.method public abstract trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
.end method

.method public abstract trackScreenView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract trackTiming(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
.end method
