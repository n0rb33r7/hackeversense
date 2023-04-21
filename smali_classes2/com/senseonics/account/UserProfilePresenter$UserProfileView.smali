.class public interface abstract Lcom/senseonics/account/UserProfilePresenter$UserProfileView;
.super Ljava/lang/Object;
.source "UserProfilePresenter.java"

# interfaces
.implements Lcom/senseonics/view/DialogShowingView;
.implements Lcom/senseonics/util/ProgressShowingView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/account/UserProfilePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UserProfileView"
.end annotation


# virtual methods
.method public abstract displayProfileInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract getRes()Landroid/content/res/Resources;
.end method

.method public abstract goToLogin()V
.end method

.method public abstract setupProfileViews(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
.end method

.method public abstract showProfileImageSelector(Lcom/senseonics/view/SimpleDialogFragment$OnDismissListener;)V
.end method
