.class public Lorg/michaelbel/bottomsheet/menu/BottomSheetMenuItem;
.super Ljava/lang/Object;
.source "BottomSheetMenuItem.java"

# interfaces
.implements Landroid/view/MenuItem;


# static fields
.field private static final CHECKABLE:I = 0x1

.field private static final CHECKED:I = 0x2

.field private static final ENABLED:I = 0x10

.field private static final EXCLUSIVE:I = 0x4

.field private static final HIDDEN:I = 0x8

.field private static final NO_ICON:I


# instance fields
.field private final mCategoryOrder:I

.field private mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mContext:Landroid/content/Context;

.field private mFlags:I

.field private final mGroup:I

.field private mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mIconResId:I

.field private final mId:I

.field private mIntent:Landroid/content/Intent;

.field private final mOrdering:I

.field private mShortcutAlphabeticChar:C

.field private mShortcutNumericChar:C

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleCondensed:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V
    .locals 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput v0, p0, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenuItem;->mIconResId:I

    const/16 v0, 0x10

    .line 67
    iput v0, p0, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenuItem;->mFlags:I

    .line 80
    iput-object p1, p0, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenuItem;->mContext:Landroid/content/Context;

    .line 81
    iput p3, p0, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenuItem;->mId:I

    .line 82
    iput p2, p0, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenuItem;->mGroup:I

    .line 83
    iput p4, p0, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenuItem;->mCategoryOrder:I

    .line 84
    iput p5, p0, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenuItem;->mOrdering:I

    .line 85
    iput-object p6, p0, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenuItem;->mTitle:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/CharSequence;I)V
    .locals 7

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v6, p3

    .line 121
    invoke-direct/range {v0 .. v6}, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    .line 122
    invoke-virtual {p0, p4}, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenuItem;->setIcon(I)Landroid/view/MenuItem;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v6, p3

    .line 134
    invoke-direct/range {v0 .. v6}, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    .line 135
    invoke-virtual {p0, p4}, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;I)V
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    .line 96
    invoke-direct/range {v0 .. v6}, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    .line 97
    invoke-virtual {p0, p3}, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenuItem;->setIcon(I)Landroid/view/MenuItem;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    .line 108
    invoke-direct/range {v0 .. v6}, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    .line 109
    invoke-virtual {p0, p3}, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    return-void
.end method


# virtual methods
.method public collapseActionView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public expandActionView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getActionView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlphabeticShortcut()C
    .locals 1

    .line 139
    iget-char v0, p0, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenuItem;->mShortcutAlphabeticChar:C

    return v0
.end method

.method public getGroupId()I
    .locals 1

    .line 143
    iget v0, p0, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenuItem;->mGroup:I

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 147
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .line 151
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenuItem;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getItemId()I
    .locals 1

    .line 155
    iget v0, p0, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenuItem;->mId:I

    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNumericShortcut()C
    .locals 1

    .line 163
    iget-char v0, p0, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenuItem;->mShortcutNumericChar:C

    return v0
.end method

.method public getOrder()I
    .locals 1

    .line 167
    iget v0, p0, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenuItem;->mOrdering:I

    return v0
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 175
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenuItem;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .locals 1

    .line 179
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenuItem;->mTitleCondensed:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenuItem;->mTitle:Ljava/lang/CharSequence;

    :goto_0
    return-object v0
.end method

.method public hasSubMenu()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public invoke()Z
    .locals 3

    .line 284
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenuItem;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 288
    :cond_0
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenuItem;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 289
    iget-object v2, p0, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenuItem;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isActionViewExpanded()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isCheckable()Z
    .locals 2

    .line 187
    iget v0, p0, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenuItem;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isChecked()Z
    .locals 1

    .line 191
    iget v0, p0, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenuItem;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 195
    iget v0, p0, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenuItem;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 199
    iget v0, p0, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenuItem;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 0

    .line 320
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setActionView(I)Landroid/view/MenuItem;
    .locals 0

    .line 310
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .locals 0

    .line 301
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 0

    .line 203
    iput-char p1, p0, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenuItem;->mShortcutAlphabeticChar:C

    return-object p0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .locals 1

    .line 208
    iget v0, p0, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenuItem;->mFlags:I

    and-int/lit8 v0, v0, -0x2

    or-int/2addr p1, v0

    iput p1, p0, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenuItem;->mFlags:I

    return-object p0
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .locals 1

    .line 218
    iget v0, p0, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenuItem;->mFlags:I

    and-int/lit8 v0, v0, -0x3

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    or-int/2addr p1, v0

    iput p1, p0, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenuItem;->mFlags:I

    return-object p0
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .locals 1

    .line 223
    iget v0, p0, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenuItem;->mFlags:I

    and-int/lit8 v0, v0, -0x11

    if-eqz p1, :cond_0

    const/16 p1, 0x10

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    or-int/2addr p1, v0

    iput p1, p0, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenuItem;->mFlags:I

    return-object p0
.end method

.method public setExclusiveCheckable(Z)Lorg/michaelbel/bottomsheet/menu/BottomSheetMenuItem;
    .locals 1

    .line 213
    iget v0, p0, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenuItem;->mFlags:I

    and-int/lit8 v0, v0, -0x5

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    or-int/2addr p1, v0

    iput p1, p0, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenuItem;->mFlags:I

    return-object p0
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .locals 1

    if-eqz p1, :cond_0

    .line 235
    iput p1, p0, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenuItem;->mIconResId:I

    .line 236
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenuItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 0

    .line 228
    iput-object p1, p0, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 229
    iput p1, p0, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenuItem;->mIconResId:I

    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 0

    .line 243
    iput-object p1, p0, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenuItem;->mIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 0

    .line 248
    iput-char p1, p0, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenuItem;->mShortcutNumericChar:C

    return-object p0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 0

    return-object p0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 0

    .line 253
    iput-object p1, p0, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenuItem;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    return-object p0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .locals 0

    .line 258
    iput-char p1, p0, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenuItem;->mShortcutNumericChar:C

    .line 259
    iput-char p2, p0, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenuItem;->mShortcutAlphabeticChar:C

    return-object p0
.end method

.method public setShowAsAction(I)V
    .locals 0

    return-void
.end method

.method public setShowAsActionFlags(I)Landroid/view/MenuItem;
    .locals 0

    .line 325
    invoke-virtual {p0, p1}, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenuItem;->setShowAsAction(I)V

    return-object p0
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .locals 1

    .line 269
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenuItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenuItem;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0

    .line 264
    iput-object p1, p0, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenuItem;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0

    .line 274
    iput-object p1, p0, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenuItem;->mTitleCondensed:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .locals 2

    .line 279
    iget v0, p0, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenuItem;->mFlags:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :cond_0
    or-int p1, v0, v1

    iput p1, p0, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenuItem;->mFlags:I

    return-object p0
.end method
