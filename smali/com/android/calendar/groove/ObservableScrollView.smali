.class public Lcom/android/calendar/groove/ObservableScrollView;
.super Landroid/widget/ScrollView;
.source "ObservableScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/groove/ObservableScrollView$OnScrollChangeListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/android/calendar/groove/ObservableScrollView$OnScrollChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 26
    return-void
.end method


# virtual methods
.method protected onScrollChanged(IIII)V
    .locals 1

    .prologue
    .line 34
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 35
    iget-object v0, p0, Lcom/android/calendar/groove/ObservableScrollView;->mListener:Lcom/android/calendar/groove/ObservableScrollView$OnScrollChangeListener;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/android/calendar/groove/ObservableScrollView;->mListener:Lcom/android/calendar/groove/ObservableScrollView$OnScrollChangeListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/calendar/groove/ObservableScrollView$OnScrollChangeListener;->onScrollChanged(IIII)V

    .line 38
    :cond_0
    return-void
.end method

.method public setOnScrollListener(Lcom/android/calendar/groove/ObservableScrollView$OnScrollChangeListener;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/android/calendar/groove/ObservableScrollView;->mListener:Lcom/android/calendar/groove/ObservableScrollView$OnScrollChangeListener;

    .line 30
    return-void
.end method
